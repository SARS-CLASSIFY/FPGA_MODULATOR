%E8_3_SigAnalysisPolar.M
%��ȡFPGA�����������
%���г���ǰ����Ҫ�����ļ����·���޸�������ش���
clc

fid=fopen('D:\ModemPrograms\Chapter_8\E8_3_QamCarrier\QamCarrierPolar\simulation\modelsim\di.txt','r');
%fid=fopen('D:\ModemPrograms\Chapter_8\E8_3_QamCarrier\QamCarrierPolar\simulation\modelsim\di0.txt','r');
[di,N]=fscanf(fid,'%lg',inf);
fclose(fid);
fid=fopen('D:\ModemPrograms\Chapter_8\E8_3_QamCarrier\QamCarrierPolar\simulation\modelsim\dq.txt','r');
%fid=fopen('D:\ModemPrograms\Chapter_8\E8_3_QamCarrier\QamCarrierPolar\simulation\modelsim\dq0.txt','r');
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
start_point=40000;
demod=di(start_point:N)+sqrt(-1)*dq(start_point:N);
%��������ͼ��������λƫ�ƣ���ȡ��Ѳ�����
off=2;%��������ͼ��λƫ�Ƶ���
scatterplot(demod,8,off,'bx');
