clc;clear all;close all;
load('testY.mat');
videoFrame=VY{1}
imshow(videoFrame);
DD=bwconncomp(videoFrame); D=DD.PixelIdxList;
 numD=length(D);
 q=1;I=[];
 for kk=1:numD;
     if length(D{kk})<50
         I(q)=kk;q=q+1;
     end
 end
   D(I)=[];
 numnode=length(D);
  for k=1:numnode
 c=D{1,k}(:,1);d=D{1,k}(:,1);
 %c=fix(c/1080)+1;d=d-1080*(c-1);%获取白点边界点的横纵坐标
 c=fix(c/1080);d=d-1080*c;
 y(k)=sum(d)/length(d);x(k)=sum(c)/length(c); %取边界点横纵坐标平均值作为质心

end
[n,m]=mergesort(y,x,1,943);%按y的值进行快速排序
s=1;k=1;
while s<=29      %对第一帧每一行重新排序
    if mod(s,2)==1
       [a1,a]=mergesort(m,n,k,k+32); n(k:k+32)=a;m(k:k+32)=a1;s=s+1;k=k+33;
    elseif mod(s,2)==0
        [a1,a]=mergesort(m,n,k,k+31);n(k:k+31)=a;m(k:k+31)=a1;s=s+1;k=k+32;
    end
end
  figure,imshow(videoFrame);
    for k=1:943
    text(m(k),n(k),num2str(k));%在质心标上序号
    end


