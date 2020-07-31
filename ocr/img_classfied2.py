import tensorflow as tf
import pandas as pd
import numpy as np
from PIL import Image
import os

dict = {'上海': 0, '云南': 1, '内蒙古': 2, '北京': 3, '台湾': 4, '吉林': 5, '四川': 6, '天津': 7, '宁夏': 8, '安徽': 9, '山东': 10,
        '山西': 11, '广东': 12, '广西': 13, '新疆': 14, '江苏': 15, '江西': 16, '河北': 17, '河南': 18, '浙江': 19, '海南': 20, '湖北': 21,
        '湖南': 22, '澳门': 23, '甘肃': 24, '福建': 25, '西藏': 26, '贵州': 27, '辽宁': 28, '重庆': 29, '陕西': 30, '青海': 31, '香港': 32,
        '黑龙江': 33}

# def read_image(file_name):
#     img = tf.read_file(filename=file_name)  # 默认读取格式为uint8
#     img = tf.image.decode_png(img, channels=1)  # channels 为1得到的是灰度图，为0则按照图片格式来读
#     return img
#
#
# def get_image_batch(data_file, batch_size):
#     data_names = [os.path.join(data_file, k) for k in os.listdir(data_file)]
#
#     # 这个num_epochs函数在整个Graph是local Variable，所以在sess.run全局变量的时候也要加上局部变量。
#     filenames_queue = tf.train.string_input_producer(data_names, num_epochs=50, shuffle=True, capacity=512)
#     reader = tf.WholeFileReader()
#     _, img_bytes = reader.read(filenames_queue)
#     image = tf.image.decode_png(img_bytes, channels=1)  # 读取的是什么格式，就decode什么格式
#     # 解码成单通道的，并且获得的结果的shape是[?, ?,1]，也就是Graph不知道图像的大小，需要set_shape
#     image.set_shape([124, 295, 1])  # set到原本已知图像的大小。或者直接通过tf.image.resize_images，tf.reshape()
#     image = tf.image.convert_image_dtype(image, tf.float32)
#     # 预处理  下面的一句代码可以换成自己想使用的预处理方式
#     # image=tf.divide(image,255.0)
#     return tf.train.batch([image], batch_size)


df = pd.read_csv('data_info.csv')
# x = [Image.open(f'data/{df.iloc[i, 1]}') for i in range(len(df))]
y = []
x = []
for i in range(len(df)):
    label = df.iloc[i, 2]
    im = Image.open(f'data/{df.iloc[i, 1]}')
    im = im.convert('L')
    w, h = im.size
    im = im.crop((w // 4, h // 5, 3 * w // 4, 4 * h // 5))
    w, h = im.size
    im = im.resize((128, 128))
    im = np.array(im)
    im.resize((1, 128 * 128))
    x.append(im)
    tmp = [0 for i in range(34)]
    tmp[dict[label]] = 1
    y.append(tmp)

x_train = np.array(x)
x_train.resize((34, 128 * 128))
y_train = np.array(y)
print(y_train)

# 参数摘要
# def variable_summaries(var):
#     with tf.name_scope('summaries'):
#         mean = tf.reduce_mean(var)
#         tf.summary.scalar('mean', mean)  # 平均值
#         with tf.name_scope('stddev'):
#             stddev = tf.sqrt(tf.reduce_mean(tf.square(var - mean)))
#         tf.summary.scalar('stddev', stddev)  # 标准差
#         tf.summary.scalar('max', tf.reduce_max(var))  # 最大值
#         tf.summary.scalar('min', tf.reduce_min(var))  # 最小值
#         tf.summary.histogram('histogram', var)  # 直方图


# 初始化权值
def weight_variable(shape, name):
    initial = tf.truncated_normal(shape, stddev=0.1)
    return tf.Variable(initial, name=name)


# 初始化偏置
def bias_variable(shape, name):
    initial = tf.constant(0.1, shape=shape)
    return tf.Variable(initial, name=name)


# 卷积层
def conv2d(x, W):
    # x input tensor of shape [batch,in_height,in_width,in_channels]
    # W filter/kernel tensor of shape [filer_height,filer_width,in_channels,out_channels]
    # strides[0]=strides[3]=1, strides[1]:x方向步长，strides[2]:y方向步长
    # padding: 'SAME','VALID'
    return tf.nn.conv2d(x, W, strides=[1, 1, 1, 1], padding='SAME')


# 池化层
def max_pool_2x2(x):
    # ksize [1,x,y,1]
    return tf.nn.max_pool(x, ksize=[1, 2, 2, 1], strides=[1, 2, 2, 1], padding='SAME')


with tf.name_scope('input'):
    # 定义两个placeholder
    x = tf.placeholder(tf.float32, [None, 128 * 128], name='x-input')
    y = tf.placeholder(tf.float32, [None, 34], name='y-input')
    with tf.name_scope('x_image'):
        # 改变x的格式，转为4D的向量 [batch,in_height,in_width,in_channels]
        x_image = tf.reshape(x, [-1, 128, 128, 1], name='x_image')

with tf.name_scope('Conv1'):
    # 初始化第一个卷积层的权值和偏置
    with tf.name_scope('W_conv1'):
        W_conv1 = weight_variable([5, 5, 1, 32], name='W_conv1')  # 5x5的采样窗口，32个卷积核从一个平面抽取特征
    with tf.name_scope('b_conv1'):
        b_conv1 = bias_variable([32], name='b_conv1')  # 每个卷积核一个偏置值

    # 把x_image和权值向量进行卷积，再加上偏置值，然后应用relu激活函数
    with tf.name_scope('conv2d_1'):
        conv2d_1 = conv2d(x_image, W_conv1) + b_conv1
    with tf.name_scope('relu'):
        h_conv1 = tf.nn.relu(conv2d_1)
    with tf.name_scope('h_pool1'):
        h_pool1 = max_pool_2x2(h_conv1)  # 进行max-pooling
with tf.name_scope('Conv2'):
    # 初始化第二个卷积层的权值和偏置
    with tf.name_scope('W_conv2'):
        W_conv2 = weight_variable([5, 5, 32, 64], name='W_conv2')
    with tf.name_scope('b_conv2'):
        b_conv2 = bias_variable([64], name='b_conv2')

    # 把h_pool1和权值向量进行卷积，再加上偏置值，然后应用relu激活函数
    with tf.name_scope('conv2d_2'):
        conv2d_2 = conv2d(h_pool1, W_conv2) + b_conv2
    with tf.name_scope('relu'):
        h_conv2 = tf.nn.relu(conv2d_2)
    with tf.name_scope('h_pool2'):
        h_pool2 = max_pool_2x2(h_conv2)

# 28*28的图片第一次卷积后还是28*28，第一次池化后变为14*14
# 第二次卷积后是14x14，第二次池化后为7x7
# 现在是64张7x7的平面


with tf.name_scope('fc1'):
    # 初始化第一个全连接层
    with tf.name_scope('W_fc1'):
        W_fc1 = weight_variable([32 * 32 * 64, 2048], name='W_fc1')
    with tf.name_scope('b_fc1'):
        b_fc1 = bias_variable([2048], name='b_fc1')

    # 把池化层2的输出扁平化为1维
    with tf.name_scope('h_pool2_flat'):
        h_pool2_flat = tf.reshape(h_pool2, [-1, 32 * 32 * 64], name='h_pool2_flat')
    # 求第一个全连接层的输出
    with tf.name_scope('wx_plus_b1'):
        wx_plus_b1 = tf.matmul(h_pool2_flat, W_fc1) + b_fc1
    with tf.name_scope('relu'):
        h_fc1 = tf.nn.relu(wx_plus_b1)

    # keep_prod用来表示神经元的输出概率
    with tf.name_scope('keep_prob'):
        keep_prob = tf.placeholder(tf.float32, name='keep_prob')
    with tf.name_scope('h_fc1_drop'):
        h_fc1_drop = tf.nn.dropout(h_fc1, keep_prob, name='h_fc1_drop')

with tf.name_scope('fc2'):
    # 初始化第二个全连接层
    with tf.name_scope('W_fc2'):
        W_fc2 = weight_variable([2048, 34], name='W_fc2')
    with tf.name_scope('b_fc2'):
        b_fc2 = bias_variable([34], name='b_fc2')
    with tf.name_scope('wx_plus_b2'):
        wx_plus_b2 = tf.matmul(h_fc1_drop, W_fc2) + b_fc2
    with tf.name_scope('softmax'):
        # 计算输出
        prediction = tf.nn.softmax(wx_plus_b2, name='prediction')

with tf.name_scope('cross_entry'):
    # 交叉熵代价函数
    cross_entropy = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits_v2(labels=y, logits=prediction))
    tf.summary.scalar('cross_entry', cross_entropy)

with tf.name_scope('train'):
    # 使用AdamOptimizer进行优化
    train_step = tf.train.AdamOptimizer(1-2).minimize(cross_entropy)

with tf.name_scope('accuracy'):
    with tf.name_scope('correct_prediction'):
        # 结果存放在布尔列表
        correct_prediction = tf.equal(tf.argmax(prediction, 1), tf.argmax(y, 1))  # argmax返回一维张量中最大的值所在的位置
    with tf.name_scope('accuracy'):
        # 求准确率
        accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))
        tf.summary.scalar('accuracy', accuracy)

merged = tf.summary.merge_all()
saver = tf.train.Saver(tf.global_variables())

with tf.Session() as sess:
    sess.run(tf.global_variables_initializer())
    train_writer = tf.summary.FileWriter('Logs/train', sess.graph)
    test_writer = tf.summary.FileWriter('Logs/test', sess.graph)

    for i in range(100):
        # 训练模型
        batch_xs, batch_ys = x_train, y_train
        sess.run(train_step, feed_dict={x: batch_xs, y: batch_ys, keep_prob: 1})

        if i % 25 == 0:
            saver.save(sess, 'model/model9001', global_step=i)
        if i % 10 == 0:
            train_acc = sess.run(accuracy, feed_dict={x: x_train, y: y_train,
                                                      keep_prob: 1.0})
            print(f'Iter: {i}, Train Accuracy: {train_acc}')
# tf.print_tensors_in_checkpoint_file('model/model9001',None,True)
