# __author = 'wlx'
# date = 2020/7/28
# import numpy as np
import cv2

cap = cv2.VideoCapture(0)  # 参数为0时调用本地摄像头；url连接调取网络摄像头；文件地址获取本地视频
count = 0
while (True):
    ret, frame = cap.read()
    cv2.imshow('frame', frame)
    if cv2.waitKey(1) & 0xFF == ord('s'):
        cv2.imwrite(f'img/test{count}.jpg', frame)
        count += 1
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
cap.release()
cv2.destroyAllWindows()
