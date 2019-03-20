function [ label ] = lab2gray( label,cluster_n )
%�ú������ڽ�����õ����ر�ǩת��Ϊ����ʹ�õĻҶ�ֵ��ǩ
% label ���ؾ����ǩ cluster_n ������Ŀ ��� label �ǹ����õľ��лҶ�ֵ�ı�ǩ
   
divpixel = 256 / (cluster_n-1); %���ػ��ֵı���
label(find(label == 1)) = 0;      %���ڵ�һ�����Ҫ����Ҷ�ֵ0������ͳһ��ֵ
flag = cluster_n - 2;                  %����һ����־�������˱����������ָ���ͬ����
switch flag                                 %flag = 0 , 2 , 3 �ֱ���������ĿΪ2 , 3 , 4
    case 0
        label(find(label == 2)) = divpixel - 1;  
    case 1
        label(find(label == 2)) = divpixel - 1;  
        label(find(label == 3)) = 255; 
    case 2
        label(find(label == 2)) = divpixel;  
        label(find(label == 3)) = divpixel*2; 
        label(find(label == 4)) = 255; 
end
end