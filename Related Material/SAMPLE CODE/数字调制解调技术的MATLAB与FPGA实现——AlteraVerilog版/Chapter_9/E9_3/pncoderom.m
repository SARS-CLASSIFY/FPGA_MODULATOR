%pncoderom.m
%将伪码序列8倍采样后写后mif存储文件中
polynomial=[1 0 0 1 0 1];
regstate=[1 0 0 0 0];
pn=E9_1_PnCode(polynomial,regstate)
pn8=rectpulse(pn,8);   %对获取到的PN码进行8倍重采样;
data=[pn8,zeros(1,256-length(pn8))];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf
%Invalid file identifier
%请根据需要修改下面语句，以改变文件名及文件存放路径
fid=fopen('D:\ModemPrograms\Chapter_9\E9_3\pncode.mif','w');
fprintf(fid,'WIDTH=1;\r\n');           %指定每个数值的宽度
fprintf(fid,'DEPTH=256;\r\n');         %指定数值的个数，即ROM的深度
fprintf(fid,'ADDRESS_RADIX=UNS;\r\n'); %指定地址的数值：无符号数
fprintf(fid,'DATA_RADIX=DEC;\r\n');    %指定数据基数：十进制有符号数
fprintf(fid,'CONTENT BEGIN\r\n');      %固定格式，开始写数据
%将数据值写入文件中
for k=1:256
    m=k-1;
    fprintf(fid,'%3d',m);
    fprintf(fid,':');
    fprintf(fid,'%3d',data(k));
    fprintf(fid,';\r\n');
end
fprintf(fid,'END;\n');                   %固定格式，写数据结束
fclose(fid);