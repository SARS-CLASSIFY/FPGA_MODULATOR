%E8_3_LoopDesignPolar.m
clc;
Rs=1*10^6;      %������
es=0.707;       %����ϵ��

fs=8*10^6;     %����Ƶ�ʡ�ϵͳʱ��Ƶ��
Bit_Loop_out=27;%��·�˲����������λ��
N=31;           %NCOƵ����λ��
Tdds=8;        %NCOƵ���ָ��������ϵͳʱ�����ڸ���
K=2*pi*Tdds*2^(Bit_Loop_out-2)/2^N    %��·������

Wn=73.867*10^3;     %��·����г��Ƶ��(rad/s)

c1=((8*es*Wn/fs)+4*Wn*Wn/fs/fs)/(4+4*es*Wn/fs+Wn*Wn/fs/fs)/K
c2=4*Wn*Wn/fs/fs/(4+4*es*Wn/fs+Wn*Wn/fs/fs)/K

c1=2^(-6)
c2=2^(-13)

b=[0 K*c1 K*c2-K*c1];
a=[1 K*c1-2 1+K*c2-K*c1];
roots(a)
%�����㼫��ͼ
zplane(b,a);
