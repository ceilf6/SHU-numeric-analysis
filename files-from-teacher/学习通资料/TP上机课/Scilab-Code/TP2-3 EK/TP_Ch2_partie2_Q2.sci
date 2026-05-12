function [Achap,bchap,flag]=EliminationGauss(A,b)

n=size(A,1);
Achap=A;
bchap=b;
flag=1;

for k=1:n //à la base c'est k=1:n-1; au lieu de tester à la fin A(n,n), j'ai mis k=1:n. Si ce n'est pas nul, ce n'est pas gênant, Scilab ne rentre pas dans la boucle for car k+1=n+1>n
    if (abs(Achap(k,k))<%eps)
        flag=0;
        break
    else
      for i=k+1:n
          c=Achap(i,k)/Achap(k,k)
          bchap(i)=bchap(i)-c*bchap(k)
          Achap(i,k)=0
          for j=k+1:n
              Achap(i,j)=Achap(i,j)-c*Achap(k,j)
          end
          //Ou à la place de la dernière boucle :
          //Achap(i,k+1:n)=Achap(i,k+1:n)-c*Achap(k,k+1:n);
      end
        
        
    end
end

//if Achap(n,n))<%eps //j'ai mis k=1:n au lieu de n-1 dans la première boucle
//        flag=0;
//end
