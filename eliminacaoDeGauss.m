function raizes = eliminacaoDeGauss(A,b)
    [m,n] = size(A);
    Ab = [A b];
    for k=1:n-1
        %Pivoteamento
        %Retorna o maior numero da coluna e escolhe o pivo
        [~,p] = max(abs(Ab(k:n,k)));
        
        %Posiciona o Pivo corretamente
        p = p+k-1;
        if (p ~= k)
            Ab([k,p],:)=Ab([p,k],:);
        end
        
        %Zera valores abaixo do pivo
        for (i=k+1:n)            
            m = Ab(i,k)/Ab(k,k);
            Ab(i,k:end) = Ab(i,k:end)-m*Ab(k,k:end);
        end
        fprintf('Iteração k=%d\n',k);
        disp(Ab);
    end
    
    %Resolvendo o sistema linear
    raizes = backsub(Ab(:,1:n),Ab(:,end));
end