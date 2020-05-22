% dieu che OFDM
% dieu che 16 QAM.
% 64 song mang con.
% kenh chi chiu tac dong cua nhieu trang cong AWGN
% kenh truyen bang goc.
clear all
close all
clc
N=10^6; % so ky hieu M QAM
M=16;
x=randi([0 M-1],1,N);
h1=modem.qammod(M);
xs=modulate(h1,x);
xs=reshape(xs,64,N/64);% bien doi noi tiep song song
xs=ifft(xs,64); %bien doi ifft
xs=reshape(xs,1,N);%bien doi song song noi tiep
%kenh truyen AWGN
snr=10:20;
for i=1:length(snr)
    xt=awgn(xs,snr(i),'measured');
    xt=reshape(xt,64,N/64);% bien doi noi tiep song song
    xt=fft(xt,64);% tinh IFFT
    xt=reshape(xt,1,N);%bien doi song song noi tiep
    h2=modem.qamdemod(M);
    x_hat=demodulate(h2,xt);
    Nerr(i)=symerr(x,x_hat);
    SER(i)=Nerr(i)/N;
end
semilogy(snr,SER);