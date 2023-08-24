function   [a,b]=merge(A,Y,low,mid,high)%归并排序
  for k=low:high
  B(k)=A(k);T(k)=Y(k);k=k+1;
  end
  ii=low;jj=mid+1;k=low;
  while ii<=mid&&jj<=high
    if B(ii)<=B(jj)
       A(k)=B(ii);Y(k)=T(ii);ii=ii+1;k=k+1;
    else
       A(k)=B(jj);Y(k)=T(jj);jj=jj+1;k=k+1;
    end
  end
  while ii<=mid
    A(k)=B(ii);Y(k)=T(ii);k=k+1;ii=ii+1;
  end
  while jj<=high
    A(k)=B(jj);Y(k)=T(jj);k=k+1;jj=jj+1;
  end
  a=A(low:high);
  b=Y(low:high);
end