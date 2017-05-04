function X=backinf(A,B)
%Input  - A is an n x n down-triangular nonsingular matrix
%	     - B is an n x 1 matrix
%Output - X is the solution to the linear system AX = B

 n=length(B);
 X=zeros(n,1);
 X(1)=B(1)/A(1,1);

for k=2:1:n
    X(k)=(B(k)-A(k,1:k)*X(1:k))/A(k,k);
end