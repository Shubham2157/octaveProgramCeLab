clc;
clear all;
close all;
t=[0:0.001:1];
f1=5;
m=sin(2*pi*f1*t);
subplot(4,2,[1,2]);
plot(t,m);
title('message');
f2=80; 
c=sin(2*pi*f2*t); 
subplot(4,2,[3,4]); 
plot(t,c); 
title('carrier'); 
s=m.*c; 
subplot(4,2,[5,6]); 
plot(t,s); 
18title('DSB-SC'); 
s1=s.*c; 
[b,a]=butter(5,0.1); 
s2=filter(b,a,s1); 
subplot(4,2,[7,8]); 
plot(t,s2); 
title('demodulation');