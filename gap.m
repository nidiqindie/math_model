function [max_gap,min_gap]=gap(max_data,min_data,data)
data_size=size(data);
max_gap=zeros(1,data_size(1));
min_gap=zeros(1,data_size(1));
for i=1:data_size(1)
    for ii=1:data_size(2)
    max_gap(1,i)=max_gap(1,i)+(max_data(1,ii)-data(i,ii)).^2;
    min_gap(1,i)=min_gap(1,i)+(min_data(1,ii)-data(i,ii)).^2;
    end
     max_gap(1,i)=sqrt(max_gap(1,i));
     min_gap(1,i)=sqrt(min_gap(1,i));
end
   
end
