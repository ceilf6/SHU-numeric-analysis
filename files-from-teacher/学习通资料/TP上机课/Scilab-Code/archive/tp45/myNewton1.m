function res=myNewton1(x)

%x in -10 10

Nmax=10000;
n=0;
old=x;
enter=1;
epsilon=10^(-8);
while(enter)
    n=n+1;
    new=old-(old^3-10*old+2)/(3*old^2-10);
    
    if ((abs(new-old)<epsilon) || (n>Nmax))
        enter=0;
    else
        old=new;
    end
end

res=new;