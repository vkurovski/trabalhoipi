function y=im_chresolution(x,h,z)

if z ~= 2 && z~=1
    error('erro, operação nao existente');
end

 while h>2
     h=(h/2);
     x = im_chresolution(x,2,z);
 end

x=imread(x);
%imshow(x);
[n,m,p]=size(x);
if p==3
    x1=x(:,:,1);
    x2=x(:,:,2);
    x3=x(:,:,3);
else
    x1 = x;
    x2=zeros(n,m);
    x3=zeros(n,m);
end

taxa=(1/(h-1));
%x = bi2de(x);
%x1
if h>=1
if z==1
    N=1;
    M=1;
    counterj=1;
    counteri=1;
    for i = 1:1:n
        for j = 1:1:m
            xnew1(N,M)=x1(i,j);
            counterj=counterj+1;
            if counterj >= taxa
                M=M+1;
                counterj=counterj-taxa;
                xnew1(N,M)=x1(i,j);
            end
            M=M+1;
        end
        counteri=counteri+1;
        if counteri >= taxa
            N=N+1;
            counteri=counteri-taxa;
            xnew1(N,:)=xnew1((N-1),:);
        end
        N=N+1;
        M=1;
        counterj=1;
    end
end
if z==2
    N=1;
    M=1;
    counterj=1;
    counteri=1;
    for i = 1:1:n
        for j = 1:1:m
            xnew11(N,M)=x1(i,j);
            counterj=counterj+1;
            if counterj >= taxa
                M=M+1;
                counterj=counterj-taxa;
                if j==m
                    xnew11(N,M)=((x1(i,j))/2);
                else
                    xnew11(N,M)=((x1(i,j)+x1(i,j+1))/2);
                end
            end
            M=M+1;
        end
        N=N+1;
        M=1;
        counterj=1;
    end
    N=1;
    M=1;
    counterj=1;
    counteri=1;
    
    for j = 1:1:n
        xnew1(M,:)=xnew11(j,:);
        counterj=counterj+1;
        if counterj >= taxa
            M=M+1;
            counterj=counterj-taxa;
            if j==n
                xnew1(M,:)=((xnew11(j,:))/2);
            else
                xnew1(M,:)=((xnew11(j,:)+xnew11(j+1,:))/2);
            end
        end
        M=M+1;
    end
end
%x2
if z==1
    N=1;
    M=1;
    counterj=1;
    counteri=1;
    for i = 1:1:n
        for j = 1:1:m
            xnew2(N,M)=x2(i,j);
             counterj=counterj+1;
            if counterj >= taxa
                M=M+1;
                counterj=counterj-taxa;
                xnew2(N,M)=x2(i,j);
            end
            M=M+1;
        end
        counteri=counteri+1;
        if counteri >= taxa
            N=N+1;
            counteri=counteri-taxa;
            xnew2(N,:)=xnew2((N-1),:);
        end
        N=N+1;
        M=1;
        counterj=1;
    end
end
if z==2
    N=1;
    M=1;
    counterj=1;
    counteri=1;
    for i = 1:1:n
        for j = 1:1:m
            xnew22(N,M)=x2(i,j);
            counterj=counterj+1;
            if counterj >= taxa
                M=M+1;
                counterj=counterj-taxa;
                if j==m
                    xnew22(N,M)=((x2(i,j))/2);
                else
                    xnew22(N,M)=((x2(i,j)+x2(i,j+1))/2);
                end
            end
            M=M+1;
        end
        N=N+1;
        M=1;
        counterj=1;
    end
    N=1;
    M=1;
    counterj=1;
    counteri=1;
   
        for j = 1:1:n
            xnew2(M,:)=xnew22(j,:);
            counterj=counterj+1;
            if counterj >= taxa
                M=M+1;
                counterj=counterj-taxa;
                if j==n
                    xnew2(M,:)=((xnew22(j,:))/2);
                else
                    xnew2(M,:)=((xnew22(j,:)+xnew22(j+1,:))/2);
                end
            end
            M=M+1;
        end
    
    
            
end

%x3
if z==1
    N=1;
    M=1;
    counterj=1;
    counteri=1;
    for i = 1:1:n
        for j = 1:1:m
            xnew3(N,M)=x3(i,j);
             counterj=counterj+1;
            if counterj >= taxa
                M=M+1;
                counterj=counterj-taxa;
                xnew3(N,M)=x3(i,j);
            end
            M=M+1;
        end
        counteri=counteri+1;
        if counteri >= taxa
            N=N+1;
            counteri=counteri-taxa;
            xnew3(N,:)=xnew3((N-1),:);
        end
        N=N+1;
        M=1;
        counterj=1;
    end
end
if z==2
    N=1;
    M=1;
    counterj=1;
    counteri=1;
    for i = 1:1:n
        for j = 1:1:m
            xnew33(N,M)=x3(i,j);
            counterj=counterj+1;
            if counterj >= taxa
                M=M+1;
                counterj=counterj-taxa;
                if j==m
                    xnew33(N,M)=((x3(i,j))/2);
                else
                    xnew33(N,M)=((x3(i,j)+x3(i,j+1))/2);
                end
            end
            M=M+1;
        end
        N=N+1;
        M=1;
        counterj=1;
    end
    N=1;
    M=1;
    counterj=1;
    counteri=1;
   
        for j = 1:1:n
            xnew3(M,:)=xnew33(j,:);
            counterj=counterj+1;
            if counterj >= taxa
                M=M+1;
                counterj=counterj-taxa;
                if j==n
                    xnew3(M,:)=((xnew33(j,:))/2);
                else
                    xnew3(M,:)=((xnew33(j,:)+xnew33(j+1,:))/2);
                end
            end
            M=M+1;
        end
    
    
            
end
end
if h<1
    N=1;
    M=1;
    for i = 1:(1/h):n
        for j = 1:(1/h):m
            xnew1(N,M)=x1(i,j);
            M=M+1;
        end
        N=N+1;
        M=1;
    end
    N=1;
    M=1;
    for i = 1:(1/h):n
        for j = 1:(1/h):m
            xnew2(N,M)=x2(i,j);
            M=M+1;
        end
        N=N+1;
        M=1;
    end
    N=1;
    M=1;
    for i = 1:(1/h):n
        for j = 1:(1/h):m
            xnew3(N,M)=x3(i,j);
            M=M+1;
        end
        N=N+1;
        M=1;
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
resposta = 'resposta2.bmp'
imwrite(xnew,resposta);
y= resposta ;
end