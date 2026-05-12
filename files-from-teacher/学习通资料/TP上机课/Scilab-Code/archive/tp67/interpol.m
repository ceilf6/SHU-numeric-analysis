
function p=interpol(x,y)
n=length(x);


%vdm


A=[];
for i=0:n-1
A=[A;x.^i];
end
A=A';

p=(A^(-1)*y')'

% lagrange le ieme polynome s'annule partout sauf en xi.



for i=1:n
    L(i)=y(i);
      for j=1:n
         if (i~=j)
            L(i)=L(i)/(x(i)-x(j));
         end
      end
end
L




%newton

% tableau visible plutot que version optimisee

Z=y';

for i=1:n-1
    ycour=zeros(size(y'));
    for k=i+1:n
        ycour(k)=(Z(k,i)-Z(k-1,i))/(x(k)-x(k-i));
    end
    Z=[Z,ycour];
end
Z

newt=diag(Z)'



        
