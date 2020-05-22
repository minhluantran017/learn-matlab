%-----------19-Jul-2016-----------------
%loai bo khoang trang ngau nhien va phuc hoi sdt
%---------------------------------------
clc

filename= 'E:\Projects\MATLAB Project\DSP\phim_DTMF4.wav';
[amthanh, Fs]=wavread(filename);

tsound=0.3;
delta=0.1;
overlap=0;
M=round(tsound/delta);
ts=1/Fs;
Ldelta=delta/ts;
Ndelta=floor(length(amthanh)/Ldelta);

amthanh2=amthanh(1:Ndelta*Ldelta);
amthanh3=reshape(amthanh2,Ldelta,Ndelta);

ernergy_delta=sum(amthanh3.^2);

nguong=100;     %nguong nang luong dua vao thuc te dang xet
ktra_sound=ernergy_delta>nguong;         %neu la sound thi tra gia tri 1
vitri_sound=find(ktra_sound);

amthanh4=amthanh3(:,vitri_sound);
amthanh5=reshape(amthanh4,M*size(amthanh4,1),size(amthanh4,2)/M);

banphim=[1 2 3;4 5 6;7 8 9;-1 0 -2];

for i=1:size(amthanh5,2)
    amthanhlan=amthanh5(:,i);
    tansolan=dtmf_tso_dudoan(amthanhlan,512,Fs);
    toado=dtmf_vitri_dudoan(tansolan);
    phimso(i)=banphim(toado(1),toado(2));
end
phimso
sosanh=isequal(phimso,[1 6 8 5 7 2 1 3 4 2])