function res=racinenieme(x,p)


old=1;
enter=1;
epsilon=10^(-8);
while(enter)
    new=1/p*(old*(p-1)+x/old^(p-1))
    
    if (abs(new-old)<epsilon)
        enter=0;
    else
        old=new;
    end
end

res=new;

