load('data.mat');%读取mat文件当中存放的数据
[max_data,min_data]=max_min(data);%获取两个向量，分别存每一列的最大值和最小值
[max_gap,min_gap]=gap(max_data,min_data,data);%获取每一行与最大值的距离和和最小值的距离和
disp(max_gap);%打印这两个距离和
disp(min_gap);