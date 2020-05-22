clear all
close all
clc

A1=10;
f1=0;
phase1=0;

A2=10;
f2=5;
phase2=pi/2;

overSampRate=16;
fs=overSampRate*5;
nCyl=50;

t=0:1/fs:nCyl*1/5;

x1=A1*cos(2*pi*f1*t+phase1);
x2=A2*cos(2*pi*f2*t+phase2);
x=x1+x2;

figure
plot(t,x);

L=length(x);

NFFT=L;
X=fftshift(fft(x,NFFT))/NFFT;
fVals=fs*(-NFFT/2:NFFT/2-1)/NFFT;

figure
stem(fVals,abs(X),'b'); %ve pho vach
%title('double sided FFT with FFT shift');
%xlabel('F(Hz)');
%ylabel('value');
grid on

P=sum(abs(X).^2);