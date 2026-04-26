function [res,erreur]=GaussSeidel(A,b,xo)

res=xo
D=diag(diag(A))
F=-triu(A,1)
E=-triu(A',1)'
for i=1:200
    %res=inv(D)*((E+F)*res+b);
    res=inv(D-E)*(F*res+b);
end

erreur=A*res-b