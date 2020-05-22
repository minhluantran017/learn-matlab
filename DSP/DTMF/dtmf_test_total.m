%---------27-Jun-2016----------
% test tong hop cac phan trong cung mot program
%------------------------------

clear all
close all
clc

Fs=8000;
Nbit=8;
Ts=1/Fs;
Lsound=0.3;
sodienthoai=[0 9 8 2 1 0 1 2 2 1];
% Lsilence=[0.5 0.1 0.5 0.9 0.6 0.5 0.4 0.2 0.8 0.4];
% Lsilence=0.9*rand(1,length(sodienthoai))+0.1;
Nloop=10;
for loop=1:Nloop
    %Lsilence=randi(10,1,length(sodienthoai))/10;
    Lsilence=0.9*rand(1,length(sodienthoai))+0.1;
    amthanh=[];
    for index=1:length(sodienthoai)
        tsound=0:Ts:Lsound;
        [f1,f2]=ntt_2tone(sodienthoai(index));
        ysound=ntt_dtmf1(tsound,f1,f2);
        tsilence=0:Ts:Lsilence(index);
        ysilence=zeros(1,length(tsilence));% without noise
        amthanh=[amthanh ysound ysilence];
    end
    
    
    % Phia thu
    
    delta=0.04;
    overlap=0;
    Tsound=0.3;
    M=round(Tsound/delta);
    Ts=1/Fs;
    Ldelta=delta/Ts+1;
    Ndelta=floor(length(amthanh)/Ldelta);
    amthanh2=amthanh(1:Ndelta*Ldelta);
    amthanh3=reshape(amthanh2,Ldelta,Ndelta);
    E_delta=sum(amthanh3.^2);
    nguong=max(E_delta)/2; % sau khi khao sat
    kiemtrasound=E_delta>nguong; % sound --> 1
    vitrisound=find(kiemtrasound);
    amthanh4=amthanh3(:,vitrisound);
    kiemtragiandoan=vitrisound-[0 vitrisound(1:length(vitrisound)-1)];
    vitrigiandoan=find(kiemtragiandoan~=1);
    
    
    f_low=[697 770 852 941];
    f_high=[1209 1336 1477];
    matranso=[1 2 3;4 5 6;7 8 9;-1 0 -2];
    for index=1:length(vitrigiandoan)+1
        switch index
            case 1
                amthanh5=amthanh4(:,1:vitrigiandoan(index)-1);
            case length(vitrigiandoan)+1
                amthanh5=amthanh4(:,vitrigiandoan(index-1):size(amthanh4,2));
            otherwise
                amthanh5=amthanh4(:,vitrigiandoan(index-1):vitrigiandoan(index)-1);
        end
        amthanhlan=reshape(amthanh5,1,prod(size(amthanh5)));
        tansolan=ntt_det_fre(amthanhlan,256,Fs);
        toado=ntt_det_num(tansolan);
        phimso(index)=matranso(toado(1),toado(2));
    end
    
    sosanh(loop)=isequal(phimso,[0 9 8 2 1 0 1 2 2 1]);
end
error=abs(sum(sosanh-1))

