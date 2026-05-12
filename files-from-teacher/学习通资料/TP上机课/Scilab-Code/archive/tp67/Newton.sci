function Z =  Newton(t,y)
    // Z matrice differences divisees 
    n=length(t);

Z=y';



for j=1:n-1
H=zeros(n,1)
for i=j+1:n
    H(i,1)=(Z(i,j)-Z(i-1,j))/(t(i)-t(i-j))
end
disp(H)
Z=[Z,H]
end
endfunction
