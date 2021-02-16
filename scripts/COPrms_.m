% 
%% 
% subplot(3,1,1)
load cop0.mat;
figure(1);
xCOP_n050_ = rms(xCOP_n050);
xCOP_y050_ = rms(xCOP_y050);
xCOP_n090_ = rms(xCOP_n090);
xCOP_y090_ = rms(xCOP_y090);
xCOP_n0180_ = rms(xCOP_n0180);
xCOP_y0180_ = rms(xCOP_y0180);
data = [xCOP_n050_, xCOP_y050_,xCOP_n090_, xCOP_y090_,xCOP_n0180_,xCOP_y0180_];
bar(data);
set(gca,'XTicklabel',{'xCOP_n050', 'xCOP_y050', 'xCOP_n090','xCOP_y090','xCOP_n0180','xCOP_y0180'},'FontSize',10)
title('0kg mass');
ylabel('Amplitude (m)','FontSize',20);
set(gca,'linewidth',1,'fontsize',15,'fontname','Times');

%%
% subplot(3,1,2)
load cop5.mat;
figure(2);
xCOP_n550_ = rms(xCOP_n550);
xCOP_y550_ = rms(xCOP_y550);
xCOP_n590_ = rms(xCOP_n590);
xCOP_y590_ = rms(xCOP_y590);
xCOP_n5180_ = rms(xCOP_n5180);
xCOP_y5180_ = rms(xCOP_y5180);
data = [xCOP_n550_, xCOP_y550_,xCOP_n590_, xCOP_y590_,xCOP_n5180_,xCOP_y5180_];
bar(data);
set(gca,'XTicklabel',{'xCOP_n550', 'xCOP_y550', 'xCOP_n590','xCOP_y590','xCOP_n5180','xCOP_y5180'})
title('5kg mass');
ylabel('Amplitude (m)');
set(gca,'linewidth',1,'fontsize',15,'fontname','Times');
%% 
% subplot(3,1,3)
load cop10.mat;
% figure(3);
% xCOP_n1050_ = rms(xCOP_n1050);
% xCOP_y1050_ = rms(xCOP_y1050);
% xCOP_n1090_ = rms(xCOP_n1090);
% xCOP_y1090_ = rms(xCOP_y1090);
% xCOP_n10180_ = rms(xCOP_n10180);
% xCOP_y10180_ = rms(xCOP_y10180);
% 
% yCOP_n1050_ = rms(yCOP_n1050);
% yCOP_y1050_ = rms(yCOP_y1050);
% yCOP_n1090_ = rms(yCOP_n1090);
% yCOP_y1090_ = rms(yCOP_y1090);
% yCOP_n10180_ = rms(yCOP_n10180);
% yCOP_y10180_ = rms(yCOP_y10180);

xCOP_n1050Range = max(xCOP_n1050)- min(xCOP_n1050);
xCOP_n1090Range = max(xCOP_n1090)- min(xCOP_n1090);
xCOP_n10180Range = max(xCOP_n10180)- min(xCOP_n10180);

xCOP_y1050Range = max(xCOP_y1050)- min(xCOP_y1050);
xCOP_y1090Range = max(xCOP_y1090)- min(xCOP_y1090);
xCOP_y10180Range = max(xCOP_y10180)- min(xCOP_y10180);

yCOP_n1050Range = max(yCOP_n1050)- min(yCOP_n1050);
yCOP_n1090Range = max(yCOP_n1090)- min(yCOP_n1090);
yCOP_n10180Range = max(yCOP_n10180)- min(yCOP_n10180);

yCOP_y1050Range = max(yCOP_y1050)- min(yCOP_y1050);
yCOP_y1090Range = max(yCOP_y1090)- min(yCOP_y1090);
yCOP_y10180Range = max(yCOP_y10180)- min(yCOP_y10180);


data = [xCOP_n1050_, xCOP_y1050_,xCOP_n1090_, xCOP_y1090_,xCOP_n10180_,xCOP_y10180_];
bar(data);
set(gca,'XTicklabel',{'xCOP_n1050', 'xCOP_y1050', 'xCOP_n1090','xCOP_y1090','xCOP_n10180','xCOP_y10180'})
title('10kg mass');
ylabel('Amplitude (m)');
set(gca,'linewidth',1,'fontsize',15,'fontname','Times');
