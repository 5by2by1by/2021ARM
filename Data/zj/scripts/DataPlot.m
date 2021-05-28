%% xlsread("C:\Users\dbl\Desktop\data11.xlsx");
figure(1);
subplot(2,3,1);
% yyaxis left
plot(time, PositionJ1);
hold on;
% yyaxis right
plot(time, PositionJ2);
title('J1 Position VS J2 Position')
xlabel('time/s');
ylabel('Position');

%% error plot
%figure(2);
subplot(2,3,2);

% yyaxis left
% plot(time, ErrorJ1);
% 
% yyaxis right
% plot(time, ErrorJ2);

plot(time, ErrorJ1);
hold on;
plot(time, ErrorJ2);
title('J1 Error VS J2 Error')
xlabel('time/s');
ylabel('Error');

%% desTorque plot
%figure(3);
subplot(2,3,3);

plot(time, desTorque1);
hold on;
plot(time, desTorque2);
title('J1 desTorque VS J2 desTorque')
xlabel('time/s');
ylabel('desTorque');

%% coriolis plot
%figure(4);
subplot(2,3,4);

plot(time, coriolis1);
hold on;
plot(time, coriolis2);
title('J1 coriolis VS J2 coriolis')
xlabel('time/s');
ylabel('coriolis');

%% gravity plot
%figure(5);
subplot(2,3,5);

plot(time, grav1);
hold on;
plot(time, grav2);
title('J1 gravity VS J2 gravity')
xlabel('time/s');
ylabel('gravity');