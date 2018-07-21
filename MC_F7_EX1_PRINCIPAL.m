%Random surface growth
n=100; %tamanho da matriz
matriz=zeros(n);
matriz(1,:)=1;
h=ones(1,n);
ni=1000; %numero de iteracoes
for i=1:ni
    r=randi(n);
    h(r)=h(r)+1;
    matriz(h(r),r)=matriz(h(r),r)+1;
    surf(matriz);view([0,90]);xlim([0,100]);title('Random deposition surface growth');ylabel('altura h(x)');xlabel('nº de coluna')
    pause(.005);
end
