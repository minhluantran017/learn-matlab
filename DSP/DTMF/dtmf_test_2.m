%-----------9-Jul-2016----------------
%chen khoang lang vao file
%-------------------------------------
clear all
close all
clc
Nbit=32;
[amthanh, Fs]=wavread('E:\Projects\MATLAB Project\DSP\phim_DTMF1.wav');
soundsc(amthanh,44100)
khoang=10;
L=length(amthanh)/khoang;
Lkhoanglang=L;
amthanh=amthanh.';
khoanglang=zeros(1,Lkhoanglang);
nghe=[];
for index=1:khoang
    phim=amthanh((index-1)*L+1:L*index);
    if index==khoang
        nghe=[nghe phim];
    else nghe=[nghe phim khoanglang];
    end
end
wavwrite(nghe,44100,Nbit,'E:\Projects\MATLAB Project\DSP\phim_DTMF2.wav')
soundsc(nghe,44100)
figure
plot(nghe)