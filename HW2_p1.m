sigma1 = 0.7;
sigma2 = 1.0;
sigma3 = 1.5;

a1 = (2/sigma1)^2;
a2 = (2/sigma2)^2;
a3 = (2/sigma3)^2;

s = tf('s');
tf1 = a1/(s^2+4*s+a1);
tf2 = a2/(s^2+4*s+a2);
tf3 = a3/(s^2+4*s+a3);

pole1 = pole(tf1);
pole2 = pole(tf2);
pole3 = pole(tf3);

stepinfo1 = stepinfo(tf1);
stepinfo2 = stepinfo(tf2);
stepinfo3 = stepinfo(tf3);


figure;
step(tf1);
title("System Step Response with \varsigma = 0.7, 1.0, 1.5");
hold on;
step(tf2);
step(tf3);
grid on; grid minor;
legend;
xlabel("Time");
ylabel("Amplitude");
legend('\varsigma = 0.7','\varsigma = 1.0','\varsigma = 1.5');
