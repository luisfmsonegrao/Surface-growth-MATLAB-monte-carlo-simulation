%Ballistic deposition surface growth
clear
n=100;
ni=1000;
matriz=zeros(n);
matriz(1,:)=1;
h=ones(1,n);
for i=1:ni
    p=randi(n);
    if p==1
        if h(p)>=h(p+1)
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        else
            h(p)=h(p+1);
            matriz(h(p+1),p)=matriz(h(p+1),p)+1;
        end
    elseif p==100
        if h(p)>=h(p-1)
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        else
            h(p)=h(p-1);
            matriz(h(p-1),p)=matriz(h(p-1),p)+1;
        end
    else
        if h(p)>=h(p-1) && h(p)>=h(p+1)
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        elseif h(p)>=h(p-1) && h(p)<h(p+1)
            h(p)=h(p+1);
            matriz(h(p+1),p)=matriz(h(p+1),p)+1;
        elseif h(p)>=h(p+1) && h(p)<h(p-1)
            h(p)=h(p-1);
            matriz(h(p-1),p)=matriz(h(p-1),p)+1;
        elseif h(p)<h(p-1) && h(p)<h(p+1)
            A=[h(p-1), h(p+1)];
            h(p)=max(A);
            matriz(max(A),p)=matriz(max(A),p)+1;
        end
    end
    surf(matriz);view([0,90]);title('Ballistic deposition surface growth');xlabel('#Column');ylabel('#Height h(x)');
    pause(0.001)
end

            
            