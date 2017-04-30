function raizes = eliminacaoDeGauss(A,b)
    [m,n] = size(A);
    Ab = [A b];
    for k=1:n-1
        %parte do pivoteamento
        [~,p] = max(abs(Ab(k:n,k)));
        p = p+k-1;
        if (p ~= k)
            % pivoteamento das linhas
            Ab([k,p],:)=Ab([p,k],:);
        end
        for (i=k+1:n)
            m = Ab(i,k)/Ab(k,k);
            Ab(i,k:end) = Ab(i,k:end)-m*Ab(k,k:end);
        end
    end
    raizes = backsub(Ab(:,1:n),Ab(:,end));
end