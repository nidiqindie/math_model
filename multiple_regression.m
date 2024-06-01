%返回两个向量，第一个向量B表示这个多元线性回归方程的系数向量
%第二个值R表示对这个回归方程的多元相关系数
%输入观测矩阵data要按每行都是因变量，自变量1，自变量2，自变量3......的顺序来
function [B]=multiple_regression(data)
data_size=size(data);%data_size向量当中1存的是这个矩阵的行数，2存的是矩阵的列数
y=zeros(data_size(1),1);
x=zeros(data_size(1),data_size(2)-1);
    for i=1:data_size(1)%给y,x赋初值
        y(i,1)=data(i,1);
        for ii=2:data_size(2)
        x(i,ii-1)=data(i,ii);
        end
    end
   mdl = fitlm(x, y);
   plot(mdl);
    B=mdl.Coefficients.Estimate;
    disp(mdl);
    
   
end
