function [z,df1,df2,zimplicite,truesol]=f_equadif(t,y,opt,h)

if (opt==0)
    z=1i*y;
    df1=0;
    df2= 1i;
    zimplicite=y/(1-1i*h);
    truesol=exp(1i*t);
end

if (opt==1)
    z=1+exp(-t)-y;
    df1= -1*exp(-t);
    df2=-1;
    zimplicite=(y+h*(1+exp(-t)))/(1+h);
    truesol=t.*exp(-t)+1;
end

if (opt==2)
    z=exp(-t)+2*y;
    df1= -1*exp(-t);
    df2=2;
    zimplicite=(y+h*(exp(-t)))/(1-2*h);
    truesol=1/3.*(4*exp(2*t)-exp(-t));
end


if (opt==3)
    z=-88*y;
    df1= 0;
    df2=-88;
    zimplicite=(y)/(1+88*h);
    truesol=exp(-88*t);
end
