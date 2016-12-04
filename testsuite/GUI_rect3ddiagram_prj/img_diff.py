# copyright by ldpgh @ 2016

import sys
import numpy as np
import cv2

# For automation - means non-interactive ...
# change shw(...., timeout=0, ..) to a value other than 0


# rect3ddiagram ... ca. position and size to evaluate
ref_name="qucs_rect3ddiagram_0.0.9.PNG"
tst_name="qucs_rect3ddiagram_0.0.19.PNG"
x0=20
y0=370
ww=520
hh=270

# waveform color definition for inRange() filter
blue_min=np.array([112,148,148])
blue_max=np.array([125,255,255])

try:
  if sys.argv[1]:
    print "WARNING testmode for PASS using tst_name=ref_name=%s" % ref_name
    tst_name=ref_name
except:
  pass

def img_filt_low_coord(img):
  x_min=len(img[0])
  y_min=len(img)
  # performance issue in numpy, if accessing small arrays (Pixel px, px[0])
  # in the loop center very often
  l_img=img.tolist()
  for yy in range(len(img)):
    for xx in range(len(l_img[yy])):
      px=l_img[yy][xx]
      # mit mask=cv2.bitwise_and() test px=array([0, 0, 0], dtype=uint8)
      #                            oder    array([255, 0, 0], dtype=uint8)
      if px[0] > 128:
        if xx<x_min:
          x_min=xx
        if yy<y_min:
          y_min=yy
  return y_min, x_min

def img_filt(img):
  global blue_min, blue_max
  # convert image to HSV color style for inRange() operation
  img_hsv=cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
  # define blue color range for filter operation
  img_msk=cv2.inRange(img_hsv, blue_min, blue_max)
  # Bitwise-AND the mask and image ... returns [0,0,0] or [255,0,0]
  retimg=cv2.bitwise_and(img, img, mask=img_msk)
  return retimg

def shw(img, timeout=0, title="image"):
  cv2.imshow(title, img)
  cv2.waitKey(timeout)
#  cv2.destroyAllWindows()

def check_pixel_is_set(img):
  limg=img.tolist()
  for xx in limg:
    for px in xx:
      if px[0] is not 0:
        return True
  return False

# load images
img_ref=cv2.imread(ref_name)
img_tst=cv2.imread(tst_name)

# extract blue pixel, keep image size unchanged for later offset correction
img_ref=img_filt(img_ref)
img_tst=img_filt(img_tst)

# find most top and most left pixel position in predefined diagram region only
img_ref_y_min, img_ref_x_min=img_filt_low_coord(img_ref[y0:y0+hh, x0:x0+ww])
img_tst_y_min, img_tst_x_min=img_filt_low_coord(img_tst[y0:y0+hh, x0:x0+ww])

# calculate the offset between the blue waveforms in the images
dy=img_tst_y_min-img_ref_y_min
dx=img_tst_x_min-img_ref_x_min

# final cut-out for the comparison including offset correction of tst-image 
img_ref=img_ref[y0:y0+hh, x0:x0+ww]
img_tst=img_tst[y0+dy:y0+dy+hh, x0+dx:x0+dx+ww]

# show the input images
shw(img_ref, title="ref")
shw(img_tst, title="tst")
# show the compare results
shw(img_tst-img_ref, title="tst-ref")
shw(img_ref-img_tst, title="ref-tst")
shw(img_ref^img_tst, title="ref^tst") #, timeout=0)

if check_pixel_is_set(img_tst-img_ref):
  print "FAILED"
else:
  print "PASS"
