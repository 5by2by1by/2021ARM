% clear all;
% close all;
subplot(2,2,1)
ch1N = ch1_N - mean(ch1_N);
ch1W = ch1_W - mean(ch1_W);
[hAx,hLine1,hLine2] = plotyy(Times, ch1N, Times1, ch1W);
title('NO-EXO  VS  EXO')
xlabel('Time')
ylabel(hAx(1),'No-Exo') % left y-axis 
ylabel(hAx(2),'Exo') % right y-axis

subplot(2,2,2)
ch3_N = ch3_N - mean(ch3_N);
ch3_W = ch3_W - mean(ch3_W);
[hAx,hLine1,hLine2] = plotyy(Times, ch3_N, Times1, ch3_W);
title('NO-EXO  VS  EXO')
xlabel('Time')
ylabel(hAx(1),'No-Exo') % left y-axis 
ylabel(hAx(2),'Exo') % right y-axis

subplot(2,2,3)
ch5_N = ch5_N - mean(ch5_N);
ch5_W = ch5_W - mean(ch5_W);
[hAx,hLine1,hLine2] = plotyy(Times, ch5_N, Times1, ch5_W);
title('NO-EXO  VS  EXO')
xlabel('Time')
ylabel(hAx(1),'No-Exo') % left y-axis 
ylabel(hAx(2),'Exo') % right y-axis

subplot(2,2,4)
ch7_N = ch7_N - mean(ch7_N);
ch7_W = ch7_W - mean(ch7_W);
[hAx,hLine1,hLine2] = plotyy(Times, ch7_N, Times1, ch7_W);
title('NO-EXO  VS  EXO')
xlabel('Time')
ylabel(hAx(1),'No-Exo') % left y-axis 
ylabel(hAx(2),'Exo') % right y-axis