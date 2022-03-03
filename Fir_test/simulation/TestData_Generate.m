%E4_6_TestData.M
f1=5*10^6;       %信号1频率为5MHz
f2=3.5*10^6;     %信号2频率为3.5MHz
Fs=25*10^6;       %采样频率为25MHz
N=12;            %量化位数为12比特
Len=2000;        %数据长度为2000

%%产生两个单载波合成后的信号
t=0:1/Fs:(Len-1)/Fs;
c1=2*pi*f1*t;
c2=2*pi*f2*t;
s1=sin(c1);%产生正弦波
s2=sin(c2);%产生正弦波
s=s1+s2;   %对两个单载波信号进行合成

%对仿真产生的合成单频信号进行量化处理
s=s/max(abs(s));         %归一化处理
Q_s=round(s*(2^(N-1)-1));%12比特量化




%将生成的数据以二进制数据格式写入txt文件中
fid=fopen('J:\GIT\FPGA_MODULATOR\Firtest\simulation\modelsim\testdata.txt','w');
for i=1:length(Q_s)
    B_noise=dec2bin(Q_s(i)+(Q_s(i)<0)*2^N,N);
    for j=1:N
       if B_noise(j)=='1'
           tb=1;
       else
           tb=0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
fprintf(fid,';'); 
fclose(fid);