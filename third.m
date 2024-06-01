function [p,R2,s]=third(data)
data_size=size(data);%data_size向量当中1存的是这个矩阵的行数，2存的是矩阵的列数
y=zeros(data_size(1),1);
x=zeros(data_size(1),1);
for i=1:data_size(1)
    for ii=1:data_size(2)
        if ii==1
            y(i,1)=data(i,ii);
        else
            x(i,1)=data(i,ii);
        end
    end
end
[p,~]=polyfit(x,y,1);%前者为此线性回归方程的系数从最高次开始往下递减
%后者为误差估计结构体，作为polyval的输入
% 计算预测值
y_pred = polyval(p, x);

% 计算 R-squared
R2 = corrcoef(y, y_pred);
R2 = R2(1,2).^2;
%计算f统计量
aov = anova(x,y);
s = stats(aov,"summary");
end