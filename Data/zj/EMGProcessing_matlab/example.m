% An example of sEMG processing

load RAWsEMG.mat
sEMG_raw = EMG_channel0;
MVC_raw = EMG_channel0_MVC;

% remove power frequency interference, usually 50Hz
sEMG_prepro = emg_process(sEMG_raw, 1);
MVC_prepro = emg_process(MVC_raw, 1);

% find the interval of MVC by hand:
% the period of maximum EMG value appeared
% the lenght is not 
MVC = MVC_prepro(2000:6000);

% calculate muscle activation level:
activaton = emg_activation(sEMG_prepro, MVC_prepro);