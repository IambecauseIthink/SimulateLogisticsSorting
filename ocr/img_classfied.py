from sklearn.ensemble import RandomForestClassifier
from sklearn import metrics
from sklearn.model_selection import train_test_split
import pandas as pd
from PIL import Image
import numpy as np
import joblib

dict = {'上海': 0, '云南': 1, '内蒙古': 2, '北京': 3, '台湾': 4, '吉林': 5, '四川': 6, '天津': 7, '宁夏': 8, '安徽': 9, '山东': 10,
        '山西': 11, '广东': 12, '广西': 13, '新疆': 14, '江苏': 15, '江西': 16, '河北': 17, '河南': 18, '浙江': 19, '海南': 20, '湖北': 21,
        '湖南': 22, '澳门': 23, '甘肃': 24, '福建': 25, '西藏': 26, '贵州': 27, '辽宁': 28, '重庆': 29, '陕西': 30, '青海': 31, '香港': 32,
        '黑龙江': 33}

df = pd.read_csv('data_info.csv')
y = []
x = []
for i in range(len(df)):
    label = df.iloc[i, 2]
    im = Image.open(f'data/{df.iloc[i, 1]}')
    im = im.convert('L')
    w, h = im.size
    im = im.crop((w // 4, h // 5, 3 * w // 4, 4 * h // 5))
    w, h = im.size
    im = np.array(im)
    im.resize((1, w * h))
    for j in range(100):
        x.append(im)
        y.append(dict[label])

x = np.array(x)
x.resize((3400, 251340))

X_train, X_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=42)
rf = RandomForestClassifier(max_depth=10, n_estimators=20)
rf.fit(X_train, y_train)
pred = rf.predict(X_test)
joblib.dump(rf,'省份分类.joblib')
print(y_test)
print(f'预测结果：{pred}')
print('预测详细精确度报告：')
print(metrics.classification_report(y_test, pred))
