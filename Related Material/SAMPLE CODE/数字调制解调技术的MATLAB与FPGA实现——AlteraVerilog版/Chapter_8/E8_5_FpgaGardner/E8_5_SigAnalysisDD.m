%E8_5_SigAnalysisDD.M
%��ȡFPGA�����������
%���г���ǰ����Ҫ�����ļ����·���޸�������ش���
clc

fid=fopen('D:\ModemPrograms\Chapter_8\E8_5_FpgaGardner\QamCarrierDD\simulation\modelsim\di.txt','r');
[di,N]=fscanf(fid,'%lg',inf);
fclose(fid);
fid=fopen('D:\ModemPrograms\Chapter_8\E8_5_FpgaGardner\QamCarrierDD\simulation\modelsim\dq.txt','r');
[dq,N]=fscanf(fid,'%lg',inf);
fclose(fid);


N  %��ʾ�������ݳ���
%��������ͼ����ʼ��(���Ʋ���ǰ����ͼ)
start_point=1;
demod=di(start_point:N)+sqrt(-1)*dq(start_point:N);
%��������ͼ��������λƫ�ƣ���ȡ��Ѳ�����
off=1;%��������ͼ��λƫ�Ƶ���
scatterplot(demod,8,off,'bx');

%��������ͼ����ʼ��(���Ʋ��������ͼ)
start_point=5000;
demod=di(start_point:N)+sqrt(-1)*dq(start_point:N);
%��������ͼ��������λƫ�ƣ���ȡ��Ѳ�����
off=4;%��������ͼ��λƫ�Ƶ���
scatterplot(demod,8,off,'bx');
