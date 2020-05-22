function [toado]=dtmf_vitri_dudoan(tansolan)

f_low=[697 770 852 941];
f_high=[1209 1336 1477];

tansonho=min(tansolan);
tansolon=max(tansolan);

%tim tan so f low dua tren sai so
saisonho=abs(tansonho-f_low);
[~,vtrimin]=sort(saisonho);
tso_dudoan_nho=f_low(vtrimin(1));

%tim tan so f high dua tren sai so
saisolon=abs(tansolon-f_high);
[~,vtrimax]=sort(saisolon);
tso_dudoan_lon=f_high(vtrimax(1));

%tim toa do cua cap tan so
toadohang=find(f_low==tso_dudoan_nho);
toadocot=find(f_high==tso_dudoan_lon);
toado=[toadohang toadocot];