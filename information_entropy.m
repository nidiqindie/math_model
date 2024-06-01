function e=information_entropy(data)%data是一个n*m的矩阵
data_size=size(data);%data_size向量当中1存的是这个矩阵的行数，2存的是矩阵的列数
e=zeros(data_size(2),1);
for i=1:data_size(2)
    a=0;
    n=0;
    for ii=1:data_size(1)
        if log(data(ii,i))~=-Inf
            a=a+data(ii,i)*log(data(ii,i));
            n=n+1;
        end
    end
    if n>0
    e(i,1)=(-1/log(data_size(1)))*a;
    else
    e(i,1)=Nan;
    end
end