function invmat=tp1invmat(n)

for i=1:n
    for j=1:i
        A(i,j)=factorial(i)/(factorial(i-j)*factorial(j));
    end
end


invmat=inv(A);
