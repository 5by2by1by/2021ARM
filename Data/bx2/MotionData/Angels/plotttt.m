subplot(2,1,1);
plot(Y5v, 'r+');
hold on;
plot(NRv, 'b-');
legend('Vel With EXO', 'Vel Without EXO');
title('Velocity (bent 90бугм10kg) ');
xlabel('samples');
ylabel('Velocity');

subplot(2,1,2);
plot(Y5a, 'g*');
hold on;
plot(NRa,'k.');
legend('Acce With EXO', 'Acce Without EXO');
title('Acce(bent 90бугм10kg) ');
xlabel('samples');
ylabel('Acceleration');