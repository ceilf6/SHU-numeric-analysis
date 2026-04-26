funcprot(0) //Pour pas qu'on ait un message comme quoi on redéfinit les ftc lorsqu'on relance
function x=solveLowerTri(A,b)
  n=size(A,1);
  x=zeros(n,1);
  x(1)=b(1)/A(1,1);
  for i=2:n 
      x(i)=(b(i)-A(i,1:i-1)*x(1:i-1))/A(i,i);
  end
endfunction

function x=solveUpperTri(A,b)
  n=size(A,1);
  x=zeros(n,1);
  x(n)=b(n)/A(n,n);
  for i=n-1:-1:1 
      x(i)=(b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
  end
endfunction

function [L,U]=factorizeLU(A)
  n=size(A,1);
  U=A;
  L=eye(n,n);
  for k=1:n-1
    if abs(U(k,k))<%eps
        error('Pivot is zero to machine precision !')
    end // use vectorial notation of Scilab        
      for i=k+1:n
      L(i,k)=U(i,k)/U(k,k);
      U(i,k:n)=U(i,k:n)-L(i,k)*U(k,k:n);
    end
  end
endfunction

// Test avec la matrice A du TD
A=[1 2 1;2 2 1;1 1 1];
b=[4; 5; 3]

[L,U]=factorizeLU(A); //on peut vérifier que L*U=A
y=solveLowerTri(L,b) //on peut vérifier que Ly=b
x=solveUpperTri(U,y) //on peut vérifier que Ux=y
disp(x)


