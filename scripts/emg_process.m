function [ EMGTEST ] = emg_process(emg,index )
%EMG_PROCESS 限制工频干扰
%   emg     EMG单个通道的信号数据，即一列
%   index   工频系数
    EMGTEST = emg - mean(emg);  % mean（A，dim）函数表示求均值底，dim默认为1
    for ii = 1:index
        wn = [(ii*50-1)/500 (ii*50+1)/500]; % 'stop' 用于设计阶数为2*n的带阻数字滤波器，Wn应该是有两个元素的向量Wn=[w1 w2]。阻带是w1 < ω <w2.
        [b,a] = butter(1, wn, 'stop');  %设计一个阶数为n，归一化截止频率为Wn的低通数字巴特沃斯滤波器
        EMGTEST = filter(b,a, EMGTEST); %输入X为滤波前序列，Y为滤波结果序列，B/A 提供滤波器系数，B为分子， A为分母
    end
end
