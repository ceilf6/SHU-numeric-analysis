function [det1,det2]=tp1computedet(n)
//compute avec n=3 ou 5

for i=1:n
    for j=1:n
        A(i,j)=max(i,j);
    end
end

det1=det(A)

for i=1:n
    for j=1:n
        B(i,j)=i^j;
    end
end

det2=det(B)
