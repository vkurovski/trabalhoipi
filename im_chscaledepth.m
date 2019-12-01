function y=im_chscaledepth(x,h,z)

x = im_chresolution(x,z,1);
x=imread(x);
[n,m,p]=size (x);

if p==3
    x1=x(:,:,1);
    x2=x(:,:,2);
    x3=x(:,:,3);
else
    x1 = x;
    x2=zeros(n,m);
    x3=zeros(n,m);
end

h=((2^(h))-1);

for i=1:1:n
    for j=1:1:m
        temp=round((h/255)*x1(i,j));
        temp=round((255/h)*temp);
        xnew1(i,j)=uint8(temp);
        
    end
end
for i=1:1:n
    for j=1:1:m
        temp=round((h/255)*x2(i,j));
        temp=round((255/h)*temp);
        xnew2(i,j)=uint8(temp);
    end
end
for i=1:1:n
    for j=1:1:m
        temp=round((h/255)*x3(i,j));
        temp=round((255/h)*temp);
        xnew3(i,j)=uint8(temp);
    end
end

if p==3
    
    xnew(:,:,1)=(xnew1);
    xnew(:,:,2)=(xnew2);
    xnew(:,:,3)=(xnew3);
else
    xnew=xnew1;
end
xnew = uint8(xnew);
resposta = 'resposta1.bmp'
imwrite(xnew,resposta);
y= resposta ;

end