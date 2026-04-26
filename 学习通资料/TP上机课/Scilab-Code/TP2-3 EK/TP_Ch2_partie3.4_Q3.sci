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

function B=factorizeCholesky(A)
  n=size(A,1);
  B=zeros(n,n);
  for j=1:n
    s=A(j,j)-B(j,1:j-1)*B(j,1:j-1)';
    if s<%eps
      error('matrix is not positive definite !')
    end
    B(j,j)=sqrt(s);
    for i=j+1:n
      B(i,j)=(A(i,j)-B(i,j+1:n)*B(j,j+1:n)')/B(j,j);
    end
  end
endfunction


//Discrétisation
N=50;

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

B=factorizeCholesky(A); //A=B*B^T

y1=solveLowerTri(B,f1); //B*y1=f1
u1=solveUpperTri(B',y1); //B^T * u1=y1
y2=solveLowerTri(B,f2);
u2=solveUpperTri(B',y2);

xc=linspace(0,1,1000);

clf
subplot(2,1,1)
plot(x,[0;u1;0],'o',xc,-0.5*xc.*(xc-1))
legend("approximation","solution exacte",-1)
title("N="+string(N)+", approximation et solution exacte pour f(x)=1")

subplot(2,1,2)
plot(x,[0;u2;0],'o',xc,sin(%pi*xc)/%pi^2)
legend("approximation","solution exacte",-1)
title("N="+string(N)+", approximation et solution exacte pour f(x)=sin(pi*x)")
