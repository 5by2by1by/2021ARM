% clear all;
% close all;
Times = 1 : 34317;
Times1 = 1 : 39973;
subplot(2,2,1)
ch1_N = ch1_N.Value - mean(ch1_N.Value);
ch1_W = ch1_W.Value - mean(ch1_W.Value);
[hAx,hLine1,hLine2] = plotyy(Times, ch1_N, Times1, ch1_W);
title('NO-EXO  VS  EXO')
xlabel('Time')
ylabel(hAx(1),'No-Exo') % left y-axis 
ylabel(hAx(2),'Exo') % right y-axis

subplot(2,2,2)
ch3_N = ch3_N.Value - mean(ch3_N.Value);
ch3_W = ch3_W.Value - mean(ch3_W.Value);
[hAx,hLine1,hLine2] = plotyy(Times, ch3_N, Times1, ch3_W);
title('NO-EXO  VS  EXO')
xlabel('Time')
ylabel(hAx(1),'No-Exo') % left y-axis 
ylabel(hAx(2),'Exo') % right y-axis

subplot(2,2,3)
ch5_N = ch5_N.Value - mean(ch5_N.Value);
ch5_W = ch5_W.Value - mean(ch5_W.Value);
[hAx,hLine1,hLine2] = plotyy(Times, ch5_N, Times1, ch5_W);
title('NO-EXO  VS  EXO')
xlabel('Time')
ylabel(hAx(1),'No-Exo') % left y-axis 
ylabel(hAx(2),'Exo') % right y-axis

subplot(2,2,4)
ch7_N = ch7_N.Value - mean(ch7_N.Value);
ch7_W = ch7_W.Value - mean(ch7_W.Value);
[hAx,hLine1,hLine2] = plotyy(Times, ch7_N, Times1, ch7_W);
title('NO-EXO  VS  EXO')
xlabel('Time')
ylabel(hAx(1),'No-Exo') % left y-axis 
ylabel(hAx(2),'Exo') % right y-axis