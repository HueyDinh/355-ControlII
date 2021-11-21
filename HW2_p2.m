sigma=0.2;
ohm_d=5;
k=5;
ohm_n=ohm_d/sqrt(1-sigma^2);
s = tf('s');
sys = k*ohm_n^2/(s^2+2*sigma*ohm_n*s+ohm_n^2)
step(sys); grid on; grid minor;