function [kq]=xla_kt_giongkhac(x1, x2);
%kq=1: giong nhau
%kq =0: khac nhau

[hang, cot, ~]=size(x1);
kq=1;
for index1=1:1:hang
    for index2=1:1:cot
        if x1(index1,index2) ~= x2(index1,index2)
            kq= 0;
            break;
        end
    end
end