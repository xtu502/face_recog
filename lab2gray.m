function [ label ] = lab2gray( label,cluster_n )
%该函数用于将聚类好的像素标签转化为可以使用的灰度值标签
% label 像素聚类标签 cluster_n 聚类数目 输出 label 是规整好的具有灰度值的标签
   
divpixel = 256 / (cluster_n-1); %像素划分的变量
label(find(label == 1)) = 0;      %由于第一个类别都要赋予灰度值0，所以统一赋值
flag = cluster_n - 2;                  %设置一个标志变量，此变量用于区分各不同聚类
switch flag                                 %flag = 0 , 2 , 3 分别代表聚类数目为2 , 3 , 4
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