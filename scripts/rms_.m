% 
%% 
subplot(1,3,1)
load R_0_50.mat;
figure(1);
p = rms(y);
q = rms(n);
data = [p, q];
bar(data);
set(gca,'XTicklabel',{'EXO', 'No-EXO'})
title('bent 50бу');
ylabel('Activiation %');

%%
subplot(1,3,2)
load R_10_90.mat;
figure(1);
p = rms(y);
q = rms(n);
data = [p, q];
bar(data);
set(gca,'XTicklabel',{'EXO', 'No-EXO'})
title('bent 50бу');
ylabel('Activiation %');

%% 
subplot(1,3,3)
load L_10_180.mat;
figure(1);
p = rms(y);
q = rms(n);
data = [p, q];
bar(data);
set(gca,'XTicklabel',{'EXO', 'No-EXO'})
title('bent 50бу');
ylabel('Activiation %');