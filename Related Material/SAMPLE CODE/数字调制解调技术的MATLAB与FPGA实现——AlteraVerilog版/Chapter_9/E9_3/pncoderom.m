%pncoderom.m
%��α������8��������д��mif�洢�ļ���
polynomial=[1 0 0 1 0 1];
regstate=[1 0 0 0 0];
pn=E9_1_PnCode(polynomial,regstate)
pn8=rectpulse(pn,8);   %�Ի�ȡ����PN�����8���ز���;
data=[pn8,zeros(1,256-length(pn8))];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf
%Invalid file identifier
%�������Ҫ�޸�������䣬�Ըı��ļ������ļ����·��
fid=fopen('D:\ModemPrograms\Chapter_9\E9_3\pncode.mif','w');
fprintf(fid,'WIDTH=1;\r\n');           %ָ��ÿ����ֵ�Ŀ��
fprintf(fid,'DEPTH=256;\r\n');         %ָ����ֵ�ĸ�������ROM�����
fprintf(fid,'ADDRESS_RADIX=UNS;\r\n'); %ָ����ַ����ֵ���޷�����
fprintf(fid,'DATA_RADIX=DEC;\r\n');    %ָ�����ݻ�����ʮ�����з�����
fprintf(fid,'CONTENT BEGIN\r\n');      %�̶���ʽ����ʼд����
%������ֵд���ļ���
for k=1:256
    m=k-1;
    fprintf(fid,'%3d',m);
    fprintf(fid,':');
    fprintf(fid,'%3d',data(k));
    fprintf(fid,';\r\n');
end
fprintf(fid,'END;\n');                   %�̶���ʽ��д���ݽ���
fclose(fid);