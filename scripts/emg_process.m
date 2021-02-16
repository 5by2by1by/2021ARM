function [ EMGTEST ] = emg_process(emg,index )
%EMG_PROCESS ���ƹ�Ƶ����
%   emg     EMG����ͨ�����ź����ݣ���һ��
%   index   ��Ƶϵ��
    EMGTEST = emg - mean(emg);  % mean��A��dim��������ʾ���ֵ�ף�dimĬ��Ϊ1
    for ii = 1:index
        wn = [(ii*50-1)/500 (ii*50+1)/500]; % 'stop' ������ƽ���Ϊ2*n�Ĵ��������˲�����WnӦ����������Ԫ�ص�����Wn=[w1 w2]�������w1 < �� <w2.
        [b,a] = butter(1, wn, 'stop');  %���һ������Ϊn����һ����ֹƵ��ΪWn�ĵ�ͨ���ְ�����˹�˲���
        EMGTEST = filter(b,a, EMGTEST); %����XΪ�˲�ǰ���У�YΪ�˲�������У�B/A �ṩ�˲���ϵ����BΪ���ӣ� AΪ��ĸ
    end
end
