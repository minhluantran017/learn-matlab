function [f xff]=fft_smart(x,Nf,Fs);
xf=fft(x,Nf);
xff=fftshift(xf);
f=-(Nf/2)*(Fs/Nf):Fs/Nf:(Nf/2-1)*(Fs/Nf);
figure
plot(f,abs(xff));