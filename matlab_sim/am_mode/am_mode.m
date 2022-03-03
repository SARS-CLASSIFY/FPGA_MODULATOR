Fs=500*10^6;
Len=5;  %调制信号周期数
t=0:1/Fs:Len/w1;
w1=10000;
xm=sin(2*pi*w1*t);

m=round(xm*(2^(8-1))-1);%归一化 8位

subplot(3,1,1);
plot(t,m);
xlabel('t');ylabel('m(t)'); 

%载波
wc=20*10^5;
carrierx=cos(2*pi*wc*t);
carrier=round(carrierx*(2^(6-1)-1));%归一化
subplot(3,1,2);
plot(t,carrier);
xlabel('t');ylabel('carrier(t)'); 


A=128/0.5;
am=(A+m).*carrier;
subplot(3,1,3);
plot(t,am);
xlabel('t');ylabel('am(t)'); 