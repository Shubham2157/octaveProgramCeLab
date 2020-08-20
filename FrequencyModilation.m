clc;
clear all;
close all;
t=[0:0.001:4];
f1=1; %message signal frequency
m=cos(2*pi*f1*t); %message signal
subplot(4,2,[1,2]);
plot(t,m);
title('message');
f2=30;
c=sin(2*pi*f2*t); %carrier signal
subplot(4,2,[3,4]);
plot(t,c);
title('carrier');
mf=20; %modulation index
s=sin((2*pi*f2*t)+(mf*sin(2*pi*f1*t))); %FM signal expression
subplot(4,2,[5,6]);
plot(t,s);
title('FM waveform' );
%syms t1;
x=diff(s);
y=abs(x);
[b,a]=butter(10,0.033);
s1=filter(b,a,y);
subplot(4,2,[7,8]);
plot(s1);
title('demodulation');