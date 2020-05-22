%---------------10-Jul-2016---------------------
%chuong trinh phuc hoi lai so dien thoai co san trong file
%-----------------------------------------------
clear all
close all
clc
%------------
%nghe lai am thanh
[amthanh, Fs, Nbit]=wavread('E:\Projects\MATLAB Project\DSP\phim_DTMF2.wav');
soundsc(amthanh,Fs)
figure
plot(amthanh)
%------------
%chia khoang am thanh
khoangso=10;
khoangsovanghi=19;
L=length(amthanh)/khoangsovanghi;
banphim=[1 2 3;4 5 6;7 8 9;-1 0 -2];
%------------
%phuc hoi lai so
for i=1:khoangso
    amthanhlan=amthanh((2*i-2)*L+1:(2*i-1)*L);
    tansolan=dtmf_tso_dudoan(amthanhlan,512,Fs);
    toado=dtmf_vitri_dudoan(tansolan);
    phimso(i)=banphim(toado(1),toado(2));
end
phimso
