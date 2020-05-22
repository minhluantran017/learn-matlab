function [tsodudoan]=dtmf_tso_dudoan(x,Nf,Fs);
[f, xff]=fft_smart(x,Nf,Fs);
[~,vitri]=sort(abs(xff(Nf/2+1:Nf)),'descend');
vtridudoan=vitri(1:2)+Nf/2;
tsodudoan=f(vtridudoan);