%Random + relaxation surface growth
clear
n=100;
matriz=zeros(n);
matriz(1,:)=1;
h=ones(1,n);
ni=1000;%iteration number
for i=1:ni
    p=randi(n);
    if p==1
        if h(p)>h(p+1)
            h(p+1)=h(p+1)+1;
            matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
        else
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        end
    elseif p==100
        if h(p)>h(p-1)
            h(p-1)=h(p-1)+1;
            matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
        else
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        end
    else
        if h(p)>h(p+1) && h(p)<=h(p-1)
            h(p+1)=h(p+1)+1;
            matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
        elseif h(p)>h(p-1) && h(p)<=h(p+1)
            h(p-1)=h(p-1)+1;
            matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
        elseif h(p-1)==h(p+1) && h(p)>h(p-1)
            a=randi([1,2])*2-3;
            h(p+a)=h(p+a)+1;
            matriz(h(p+a),p+a)=matriz(h(p+a),p+a)+1;
        else
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        end
    end
    surf(matriz);view([0,90]);xlim([0,100]);title('Random + Relaxation surface growth');ylabel('Height h(x)');xlabel('#column x')
    pause(.001)
end