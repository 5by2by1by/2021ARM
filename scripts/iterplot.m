%% 0kg,比较三个角度下的肌肉激活程度
load L_0_50.mat; 
y = y(find(y~=0));
n = n(find(n~=0));
n(3314:end) = [];
figure(1);
yyaxis left;
plot(y,'b+');
hold on;
plot(n,'r-');
xlabel('samples');
ylabel('Activiation');
yyaxis right;
load Angel.mat;
A = A_5_50(120:230, 1);
A = resample(A, 4306, 110);
A(1:191) = [];
A(3400:end) = [];
plot (A,'g*');
xlabel('samples','FontSize',20);
ylabel('Angel(degree)','FontSize',20);
legend('With EXO','Without EXO','Angel')
title('bent 40°,0kg');
set(gca,'linewidth',1,'fontsize',20,'fontname','Times');

%% 5kg,比较三个角度下的肌肉激活程度
load L_5_90.mat; 
n(5781:end) = [];
figure(1);
yyaxis left;
plot(y,'b+');
hold on;
plot(n,'r-');
xlabel('samples');
ylabel('Activiation');
yyaxis right;
load Angel.mat;
A_10_90(223:end) = [];
A = resample(A_10_90, 6300, 222);
A(1:174) = [];
A(6000:end) = [];
plot (A,'g*');
xlabel('samples','FontSize',20);
ylabel('Angel(degree)','FontSize',20);
legend('With EXO','Without EXO','Angel')
title('bent 90°,5kg');
set(gca,'linewidth',1,'fontsize',20,'fontname','Times');

%% 10kg,比较三个角度下的肌肉激活程度
load L_5_180.mat; 
figure(1);
yyaxis left;
plot(y,'b+');
hold on;
plot(n,'r-');
xlabel('samples');
ylabel('Activiation');
yyaxis right;
load Angel.mat;
A = resample(A_10_180, 8700, 468);
A(1:149) = [];
A(8431:end) = [];
plot (A,'g*');
xlabel('samples','FontSize',20);
ylabel('Angel(degree)','FontSize',20);
legend('With EXO','Without EXO','Angel')
title('semi-squat,10kg');
set(gca,'linewidth',1,'fontsize',20,'fontname','Times');