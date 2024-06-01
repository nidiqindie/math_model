function s=normalize(max_gap,min_gap,data)%d+,d-,原矩阵
data_size=size(data);
s=zeros(data_size(1),1);
for i=1:data_size(1)%获取它的行数
    s(i,1)=min_gap(1,i)/(max_gap(1,i)+min_gap(1,i));
end
end