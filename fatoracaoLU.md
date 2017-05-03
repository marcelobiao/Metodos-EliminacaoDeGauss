function raizes = fatoracaoLU(A,b)
	fprintf('Fatoracao LU:\n');
	[m,n] = size(A);
	%[L,U] = ordem(A);
	%L=0;
	%U[t:m,t:m]=1;
	Y = size(b);

	for k=1:n
		if(Det(A(1:k,1:k))=0)
			raizes=0;
			return
		end
	end
	for i=1:i=m
		for j=1:j=n
			if(i>=j)
				L[i,j]=A[i,j]-(L[i,k:j-1]*U[k:j-1,j])
			else
				U[i,j]=(A[i,j]-(L[i,k:j-1]*U[k:j-1,j]))/L[i,i]
			end
		end
	end
	%TODO: Colocar L e U lado a lado.
	fprintf('L:\n');
	disp(L);
	fprintf('U:\n');
	disp(U);
	raizes=backsub(U,(backsub(L,b));
end