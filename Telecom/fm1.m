clear all
close all
clc

fm=2;
fc=100;
fs=1000;
t=0:0.001:10;
xm=5*cos(2*pi*fm*t);
xc=cos(2*pi*fc*t);

kf=(fc/fs)*2*pi/max(max(abs(xm)))
y=modulate(xm,fc,fs,'fm',kf);

figure
plot(t,y)