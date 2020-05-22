%------------25-Jun-2016----------------
%luu am thanh vao file khong khoang lang
%---------------------------------------
clear all
clc
Fs=44100;
Ts=1/Fs;
tstop=0.3;
tn=0:Ts:tstop;
amthanh=[];
sdt=[1 6 8 5 7 2 1 3 4 2];

kboard=[1 2 3 ; 4 5 6; 7 8 9; 11 0 11];
fhigh=[1209 1336 1477];
flow=[697 770 852 941];

for i=1:length(sdt)
    phim=sdt(i);
    for i=1:size(kboard,1) % row --> flow
        for j=1:size(kboard,2) % col --> fhigh
            if phim==kboard(i,j)
                f1=flow(i);
                f2=fhigh(j); 
                break;
            end
        end
    end
%     switch phim
%         case 0
%             f1=941;f2=1336;
%         case 1
%             f1=697;f2=1209;
%         case 2
%             f1=697;f2=1336;
%         case 3
%             f1=697;f2=1477;
%         case 4
%             f1=770;f2=1209;
%         case 5
%             f1=770;f2=1336;
%         case 6
%             f1=770;f2=1477;
%         case 7
%             f1=852;f2=1209;
%         case 8
%             f1=852;f2=1336;
%         case 9
%             f1=852;f2=1477;
%     end
    amthanh=[amthanh dtmf(tn,f1,f2)];
end
filename= 'E:\Projects\MATLAB Project\DSP\phim_DTMF1.wav';
wavwrite(amthanh,44100,8,filename)