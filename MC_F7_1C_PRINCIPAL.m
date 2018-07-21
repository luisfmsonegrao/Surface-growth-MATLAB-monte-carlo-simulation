%Molecular Beam Epitaxy surface growth
clear
n=100;
ni=1000;
matriz=zeros(n);
matriz(1,:)=1;
h=ones(1,n);
for i=1:ni
    p=randi(n);
    if p==1
        if h(p+1)>h(p)
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        elseif h(p+1)<h(p)
            h(p+1)=h(p+1)+1;
            matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
        else
            if h(p+2)>h(p+1)
                h(p+1)=h(p+1)+1;
                matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
            else
                h(p)=h(p)+1;
                matriz(h(p),p)=matriz(h(p),p)+1;
            end
        end
    elseif p==2
        if h(p)>h(p+1) && h(p)>h(p-1)
            if h(p+2)>h(p+1)
                h(p+1)=h(p+1)+1;
                matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
            else
                a=randi([1,2])*2-3;
                h(p+a)=h(p+a)+1;
                matriz(h(p+a),p+a)=matriz(h(p+a),p+a)+1;
            end
        elseif h(p)>h(p+1)&& h(p)<h(p-1)
            if h(p+2)>h(p+1)
                h(p+1)=h(p+1)+1;
                matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
            else
                h(p)=h(p)+1;
                matriz(h(p),p)=matriz(h(p),p)+1;
            end
        elseif h(p)>h(p+1)&& h(p)==h(p-1)
            h(p+1)=h(p+1)+1;
            matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
        elseif h(p)>h(p-1) && h(p)<h(p+1)
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        elseif h(p)>h(p-1) && h(p)==h(p+1)
            h(p-1)=h(p-1)+1;
            matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
        else
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        end
      elseif p==99
        if h(p)>h(p+1) && h(p)>h(p-1)
            if h(p-2)>h(p-1)
                h(p-1)=h(p-1)+1;
                matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
            else
                a=randi([1,2])*2-3;
                h(p+a)=h(p+a)+1;
                matriz(h(p+a),p+a)=matriz(h(p+a),p+a)+1;
            end
        elseif h(p)>h(p+1)&& h(p)<h(p-1)
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        elseif h(p)>h(p+1)&& h(p)==h(p-1)
            h(p+1)=h(p+1)+1;
            matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
        elseif h(p)>h(p-1) && h(p)==h(p+1)
            h(p-1)=h(p-1)+1;
            matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
        elseif h(p)>h(p-1) && h(p)<h(p+1)
            if h(p-2)>h(p-1)
                h(p-1)=h(p-1)+1;
                matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
            else 
                h(p)=h(p)+1;
                matriz(h(p),p)=matriz(h(p),p)+1;
            end
        else
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        end
    elseif p==100
        if h(p-1)>h(p)
                h(p)=h(p)+1;
                matriz(h(p),p)=matriz(h(p),p)+1;
        elseif h(p-1)<h(p)
            h(p-1)=h(p-1)+1;
            matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
        else
            if h(p-2)>h(p-1)
                h(p-1)=h(p-1)+1;
                 matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
            else
                h(p)=h(p)+1;
                matriz(h(p),p)=matriz(h(p),p)+1;
            end
        end
    else
        if h(p)>h(p+1) && h(p)>h(p-1)
            if h(p+2)>h(p+1) && h(p-2)<=h(p-1)
                h(p+1)=h(p+1)+1;
                matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
            elseif h(p-2)>h(p-1) && h(p+2)<=h(p+1)
                h(p-1)=h(p-1)+1;
                matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
            else
                a=randi([1,2])*2-3;
                h(p+a)=h(p+a)+1;
                matriz(h(p+a),p+a)=matriz(h(p+a),p+a)+1;
            end
        elseif h(p)>h(p+1) && h(p)<h(p-1)
            if h(p+2)>h(p+1)
                h(p+1)=h(p+1)+1;
                matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
            else
                h(p)=h(p)+1;
                matriz(h(p),p)=matriz(h(p),p)+1;
            end
        elseif h(p)>h(p-1) && h(p)<h(p+1)
            if h(p-2)>h(p-1)
                h(p-1)=h(p-1)+1;
                matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
            else 
                h(p)=h(p)+1;
                matriz(h(p),p)=matriz(h(p),p)+1;
            end
        elseif h(p)>h(p+1) && h(p)==h(p-1)
            h(p+1)=h(p+1)+1;
            matriz(h(p+1),p+1)=matriz(h(p+1),p+1)+1;
        elseif h(p)>h(p-1) && h(p)==h(p+1)
            h(p-1)=h(p-1)+1;
            matriz(h(p-1),p-1)=matriz(h(p-1),p-1)+1;
        else
            h(p)=h(p)+1;
            matriz(h(p),p)=matriz(h(p),p)+1;
        end
    end
    surf(matriz);view([0,90]);xlim([0,100]);title('Molecular Beam Epitaxy deposition');xlabel('Column');ylabel('altura h(x)')
    pause(0.01)
end
    
            
               
            