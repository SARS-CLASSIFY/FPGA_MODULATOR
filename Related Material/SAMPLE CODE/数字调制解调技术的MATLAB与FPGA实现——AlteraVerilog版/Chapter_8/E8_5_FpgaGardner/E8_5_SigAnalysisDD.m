%E8_5_SigAnalysisDD.M
%读取FPGA仿真出的数据
%运行程序前，需要根据文件存放路径修改下面相关代码
clc

fid=fopen('D:\ModemPrograms\Chapter_8\E8_5_FpgaGardner\QamCarrierDD\simulation\modelsim\di.txt','r');
[di,N]=fscanf(fid,'%lg',inf);
fclose(fid);
fid=fopen('D:\ModemPrograms\Chapter_8\E8_5_FpgaGardner\QamCarrierDD\simulation\modelsim\dq.txt','r');
[dq,N]=fscanf(fid,'%lg',inf);
fclose(fid);


N  %显示仿真数据长度
%设置星座图的起始点(绘制捕获前星座图)
start_point=1;
demod=di(start_point:N)+sqrt(-1)*dq(start_point:N);
%设置星座图函数的相位偏移，获取最佳采样点
off=1;%设置星座图相位偏移点数
scatterplot(demod,8,off,'bx');

%设置星座图的起始点(绘制捕获后星座图)
start_point=5000;
demod=di(start_point:N)+sqrt(-1)*dq(start_point:N);
%设置星座图函数的相位偏移，获取最佳采样点
off=4;%设置星座图相位偏移点数
scatterplot(demod,8,off,'bx');
