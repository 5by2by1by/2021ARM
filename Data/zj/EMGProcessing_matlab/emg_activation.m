
function [ output_args1, output_args2, output_args3 ] = emg_activation( EMG_raw, EMG_MVC )
% calculate activation from raw EMG
% EMG_raw: raw EMG signal
% EMG_MVC: MVC EMG signal
% the two vector can have different length 

% inital processing, get e
EMG_raw = abs(EMG_raw);  %abs是求绝对值
EMG_MVC = abs(EMG_MVC);
[bb1,ba1] = butter(2, 2/500, 'high');%高通10hz的2阶
preemg1 = filtfilt(bb1,ba1, EMG_raw);
preemg_mvc = filtfilt(bb1,ba1, EMG_MVC);
preemg1 = rot90(rot90(preemg1));%rot90函数是matlab中使一个矩阵逆时针旋转90度的函数。Y=rot90(X)表示使矩阵X逆时针旋转90度，作为新的矩阵Y，但矩阵X本身不变
preemg_mvc = rot90(rot90(preemg_mvc));
preemg1 = filtfilt(bb1,ba1, preemg1);
preemg_mvc = filtfilt(bb1,ba1, preemg_mvc);

preemg1 = abs(rot90(rot90(preemg1)));
preemg_mvc = abs(rot90(rot90(preemg_mvc)));

[bb1,ba1] = butter(2, 2/500, 'low');
preemg1 = filtfilt(bb1,ba1, preemg1);
preemg_mvc = filtfilt(bb1,ba1, preemg_mvc);
preemg1 = rot90(rot90(preemg1));
preemg1 = filtfilt(bb1,ba1, preemg1);
preemg_mvc = filtfilt(bb1,ba1, preemg_mvc);
output_args2 = preemg_mvc;
preemg_mvc = max(preemg_mvc);
output_args3 = preemg_mvc;   %MVC

e = rot90(rot90(preemg1 / preemg_mvc));

% activation dynamics, get u
lamda1 = 0.5;
lamda2 = 0.5;
bata1 = lamda1 + lamda2;
bata2 = lamda1 * lamda2;
arfa = 1+ bata1 + bata2;
d = 10; % 10ms

for ii  = 1: d
    u(ii) = 0;
end

for ii = 1:length(e)  %向量e的长度
    u(ii+d) = arfa*e(ii) - bata1*u(ii+d-1) - bata2*u(ii+d-2);
end

% nonlinearly, get a
A = -0.1; % -3 to 0
a = (exp(A*u) - 1) ./ (exp(A) -1);
output_args1 = a;
% output_args1 = u;
end

