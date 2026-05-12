function x=solveLowerTri(A,b)
  n=size(A,1);
  x=zeros(n,1);
  for i=1:n 
      x(i)=(b(i)-A(i,1:i-1)*x(1:i-1))/A(i,i);
  end
endfunction

function x=solveUpperTri(A,b)
  n=size(A,1);
  x=zeros(n,1);
  for i=n:-1:1 
      x(i)=(b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
  end
endfunction

function [L,U]=factorizeLU(A)
  n=size(A,1);
  U=A;
  L=eye(n,n);
  for k=1:n
    if abs(U(k,k))<%eps
        error('Pivot is zero to machine precision !')
    end // use vectorial notation of Scilab        
    for i=k+1:n
      L(i,k)=U(i,k)/U(k,k);
      U(i,k:n)=U(i,k:n)-L(i,k)*U(k,k:n);
    end
  end
endfunction

//Discrétisation
N=20;

h=1/N;
x=0:h:1;

// Construction de la matrice tridiagonale
A=zeros(N-1,N-1)
A(1,1:2)=[-2 1];
for i=2:N-2
    A(i,i-1:i+1)=[1 -2 1];
end
A(N-1,N-2:N-1)=[1 -2];
A=-A/h^2;

f1=ones(N-1,1);
f2=sin(%pi*x(2:N));

[L,U]=factorizeLU(A);

y1=solveLowerTri(L,f1); //A*u1=L*U*u1=L*y1=f1 on résoud en premier L*y1=f1
u1=solveUpperTri(U,y1); //U*u1=y1
y2=solveLowerTri(L,f2);
u2=solveUpperTri(U,y2);

xc=linspace(0,1,1000);

clf
subplot(2,1,1)
plot(x,[0;u1;0],'o',xc,-0.5*xc.*(xc-1)) //solution exacte u(x)=-0,5*x*(x-1)
legend("approximation","solution exacte",-1)
title("N="+string(N)+", approximation et solution exacte pour f(x)=1")

subplot(2,1,2)
plot(x,[0;u2;0],'o',xc,sin(%pi*xc)/%pi^2) //solution exacte u(x)=sin(pi*x)/pi^2
legend("approximation","solution exacte",-1)
title("N="+string(N)+", approximation et solution exacte pour f(x)=sin(pi*x)")
