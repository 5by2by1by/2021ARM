load bx_y_10_180.mat;
y = MuscleActivation_2.Value;
y = y(1,3995:26050);
load bx_n_10_180.mat;
n = MuscleActivation_2.Value;
n = n(1,7772:26750);
save('R_10_180.mat','n','y');

load bx_y_10_180.mat;
figure(1);
x = MuscleActivation_2.Value;
% x(1:25640) = [];
plot(x);
hold on;
load bx_n_10_180.mat;
x = MuscleActivation_2.Value;
% x(1:27240) = [];
plot(x);
legend('With EXO','Without EXO')
title('Semi-Squat, 10kg');
xlabel('samples');
ylabel('Activiation %');