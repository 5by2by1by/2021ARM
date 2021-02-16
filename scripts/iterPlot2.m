%% 迭代比较肌肉激活程度，COP

%% 0kg,比较三个角度下的肌肉激活程度
subplot(3,1,1);
load bx_y_0_501.mat;
figure(1);
plot(MuscleActivation_2.Value);
hold on;
load bx_n_0_501.mat;
plot(MuscleActivation_2.Value);
legend('With EXO','Without EXO')
title('bent 50°,0kg');
xlabel('time/s');
ylabel('Activiation %');

subplot(3,1,2);
load bx_y_0_901.mat;
figure(1);
plot(MuscleActivation_2.Value);
hold on;
load bx_n_0_901.mat;
plot(MuscleActivation_2.Value);
legend('With EXO','Without EXO')
title('bent 90°,0kg');
xlabel('samples');
ylabel('Activiation %');

subplot(3,1,3);
load bx_y_0_1802.mat;
figure(1);
plot(MuscleActivation_2.Value);
hold on;
load bx_n_0_1802.mat;
x = MuscleActivation_2.Value;
x(1 : 4200) = [];
plot(x);
legend('With EXO','Without EXO')
title('Semi-Squat, 0kg');
xlabel('samples');
ylabel('Activiation %');

%% 5kg,比较三个角度下的肌肉激活程度
subplot(3,1,1);
load bx_y_5_501.mat;
figure(1);
plot(MuscleActivation_2.Value);
hold on;
load bx_n_5_502.mat;
x = MuscleActivation_2.Value;
x(1 : 1260) = [];
plot(x);
legend('With EXO','Without EXO')
title('bent 50°,5kg');
xlabel('samples');
ylabel('Activiation %');

subplot(3,1,2);
load bx_y_5_901.mat;
figure(1);
plot(MuscleActivation_2.Value);
hold on;
load bx_n_5_902.mat;
plot(MuscleActivation_2.Value);
legend('With EXO','Without EXO')
title('bent 90°,5kg');
xlabel('samples');
ylabel('Activiation %');

subplot(3,1,3);
load bx_y_5_1802.mat;
figure(1);
plot(MuscleActivation_2.Value);
hold on;
load bx_n_5_1801.mat;
plot(MuscleActivation_2.Value);      
legend('With EXO','Without EXO')
title('Semi-Squat, 5kg');
xlabel('samples');
ylabel('Activiation %');

%% 10kg,比较三个角度下的肌肉激活程度
subplot(3,1,1);
load bx_y_10_501.mat;
figure(1);
plot(MuscleActivation_2.Value);
hold on;
load bx_n_10_501.mat;
plot(MuscleActivation_2.Value);
legend('With EXO','Without EXO')
title('bent 50°,10kg');
xlabel('samples');
ylabel('Activiation %');

subplot(3,1,2);
load bx_y_10_902.mat;
figure(1);
plot(MuscleActivation_2.Value);
hold on;
load bx_n_10_901.mat;
plot(MuscleActivation_2.Value);
legend('With EXO','Without EXO')
title('bent 90°,10kg');
xlabel('samples');
ylabel('Activiation %');

subplot(3,1,3);
load bx_y_10_180.mat;
figure(1);
x = MuscleActivation_2.Value;
x(1:25640) = [];
plot(x);
hold on;
load bx_n_10_180.mat;
x = MuscleActivation_2.Value;
x(1:27240) = [];
plot(x);
legend('With EXO','Without EXO')
title('Semi-Squat, 10kg');
xlabel('samples');
ylabel('Activiation %');