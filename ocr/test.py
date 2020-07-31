import pandas as pd
from PIL import Image
import pytesseract
import warnings
import matplotlib

warnings.filterwarnings('ignore')
count = 0
df = pd.read_csv('data_info.csv')
# x = [Image.open(f'data/{df.iloc[i, 1]}') for i in range(len(df))]
y = [df.iloc[i, 2] for i in range(len(df))]
x = []
for i in range(len(df)):
    im = Image.open(f'data/{df.iloc[i, 1]}')
    w, h = im.size
    im = im.crop((w // 4, 2 * h // 5, 3 * w // 4, 3 * h // 4))
    w, h = im.size
    im = im.resize((w // 2, h // 2))
    im.show()
    x.append(im)
for i in range(len(df)):
    text = pytesseract.image_to_string(x[i], lang='chi_sim')
    print(y[i])
    print(text.strip())
    if y[i] in text:
        count += 1
print(f'Accuracy:{count / len(df)}')
