function raizes = fatoracaoLU(A,b)
	fprintf('Fatoracao LU:\n');
	[m,n] = size(A);
    
	L=[ 0 0 0 0 0 0;
        0 0 0 0 0 0;
        0 0 0 0 0 0;
        0 0 0 0 0 0;
        0 0 0 0 0 0;
        0 0 0 0 0 0];
    
    U=[ 1 0 0 0 0 0;
        0 1 0 0 0 0;
        0 0 1 0 0 0;
        0 0 0 1 0 0;
        0 0 0 0 1 0;
        0 0 0 0 0 1];
    k=1;
	for i=1:m
		for j=1:n
			if(i>=j)
				L(i,j)=A(i,j)-(L(i,k:j-1)*U(k:j-1,j));
			else
				U(i,j)=(A(i,j)-(L(i,k:j-1)*U(k:j-1,j)))/L(i,i);
			end
		end
	end
	%TODO: Resolver Sistema linear.
	fprintf('L:\n');
	disp(L);
	fprintf('U:\n');
	disp(U);
    y=backsub(L,b);
    fprintf('y\n');
    disp(y);
	raizes=backsub(U,y);
end