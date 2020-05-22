k= input('Nhap vao he so khuech dai cua bo loc(dB): ');
a=input('nhap vao tan so cat (Hz): ');
m=input('Nhap vao he so suy giam(dB/dec): ');
b=input('Nhap vao tan so can tinh(Hz): ');
deltam=m*log10(b/a);
m1=k-deltam;
display('He so nhan la: ');
alpha=10^(m1/20)
