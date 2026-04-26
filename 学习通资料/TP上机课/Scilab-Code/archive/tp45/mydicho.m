function c=mydicho(x,p)


a=0;
b=x+1;


while(abs(a-b)>10^(-8))
    
c=(a+b)/2;

if ((c^(p)-x)*(b^(p)-x)<0)
    a=c;
else
    b=c;
end

    
end
