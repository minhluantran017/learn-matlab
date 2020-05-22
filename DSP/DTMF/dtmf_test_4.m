%------------19-Jul-2016-----------
%chen khoang lang ngau nhien vao cac so
%----------------------------------
clc
clear all
Fs=8000;
ts=1/Fs;
Nbit=8;
tstop=0.3;
Lsound=0.3;
sdt=[1 6 8 5 7 2 1 3 4 2];
amthanh=[];
%Lsilence=[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
Lsilence=0.1*randi(10,1,length(sdt));       %lay ngau nhien cac so trong pham vi 1

for i=1:length(sdt)
    tsound=0:ts:Lsound;
    [f1,f2]=dtmf_num2tone(sdt(i));
    ysound=dtmf(tsound,f1,f2);
    tsilence=0:ts:Lsilence(i);
    ysilence=zeros(1,length(tsilence));
    amthanh=[amthanh ysound ysilence];
end

soundsc(amthanh,Fs,Nbit);
figure
plot(amthanh)
filename='E:\Projects\MATLAB Project\DSP\phim_DTMF4.wav';
wavwrite(amthanh,Fs,Nbit,filename);
