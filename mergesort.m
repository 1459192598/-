function [a,a1]=mergesort(A,Y,low,high)%归并排序,占用内存提高排序效率
if low<high
   mid=floor((low+high)/2);
   [b,b1]=mergesort(A,Y,low,mid);%对左边一半排序
   A(low:mid)=b;Y(low:mid)=b1;
   [c,c1]=mergesort(A,Y,mid+1,high);%对右边一半排序
   A(mid+1:high)=c;Y(mid+1:high)=c1;
   [d,d1]=merge(A,Y,low,mid,high);%左右一起排序
   A(low:high)=d;Y(low:high)=d1;
 end
 
 a=A(low:high);
 a1=Y(low:high);
end

