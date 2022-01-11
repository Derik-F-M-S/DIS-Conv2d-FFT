from q1 import conv2
import numpy as np
import cv2
from scipy import signal

img=np.zeros((1024,1024))
img[512][512]=255
kernel=np.array([[1,1,1],[1,1,1],[1,1,1]]).astype(np.float32)
img2= conv2(img, kernel, 0)
img3=signal.convolve2d(img,kernel,mode='full')
cv2.imwrite('./impulseimg.png', img2)
cv2.imwrite('./impulseimgsp.png', img3)
cv2.imwrite('./origimg.png', img)
