function z=suptche(n)

inter=-1:0.001:1;
ordo=1./(1+25*inter.^2);
k=0:n;
racine=cos((2*k+1)*pi/(2*(n+1)))
%racine=cos((k)*pi/((n+2)))
equi=2/(n)*(k-n)+1

prod1=0.*inter+1;
prod2=0.*inter+1;

for i=1:n
    prod1=prod1.*(inter-racine(i));
    prod2=prod2.*(inter-equi(i));
end

resTche=max(prod1)
resUni=max(prod2)


y=1./(1+25*racine.^2);
yy=1./(1+25*equi.^2);

p=fliplr(interpol(racine,y));
z=polyval(p,inter);

pp=fliplr(interpol(equi,yy));
zz=polyval(pp,inter);


hold on 
plot(inter,ordo,'r');
plot(inter,z);
plot(inter,zz);
plot(racine+1i*y,'*')
plot(equi+1i*yy,'or')
hold off
