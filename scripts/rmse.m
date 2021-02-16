load bx_y_0_1801.mat;
figure(1);
mx = MuscleActivation_0.Value - mean(MuscleActivation_0.Value);
x = rms(mx);
bar(x);
hold on
load bx_n_0_1801.mat;
my = MuscleActivation_0.Value - mean(MuscleActivation_0.Value);
y = rms(my);
% data = [x, y];
bar(y);
legend('With EXO','Without EXO')
title('bent 50бу,0kg');
xlabel('time/s');
ylabel('Activiation %');