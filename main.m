load('data.mat');%读取mat文件当中存放的数据
load("Observation_Matrix.mat");
load("third_mirx.mat");
[max_data,min_data]=max_min(data);%获取两个向量，分别存每一列的最大值和最小值
[max_gap,min_gap]=gap(max_data,min_data,data);%获取每一行与最大值的距离和和最小值的距离和
e=information_entropy(data);
s=normalize(max_gap,min_gap,data);
disp(s);

fprintf("信息熵为：\n");
disp(e);
fprintf("\n\n");
[B]=multiple_regression(Observation_Matrix);
disp(B);
fprintf("\n\n\n");
[p,R2]=third(third_mirx);
fprintf("y'=%.8fx+%.8f\n",p(1),p(2));
fprintf("R2=%.4f\n",R2);
