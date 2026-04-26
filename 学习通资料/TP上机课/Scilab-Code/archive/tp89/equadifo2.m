function equadifo2(n,T)
%modify the function F at the end according to the equadif

h=T/n;

hold on
%exact
inter=0:0.01:T;
plot(inter,exp(2*inter)-2*exp(inter),'r');


%euler expl

Yn=[-1;0];
z(1)=Yn(1);
tps(1)=0;
for i=0:n-1
    
    Yn=Yn+h*F(i*h,Yn);
    
    z=[z,Yn(1)];
    tps=[tps,(i+1)*h];
end


plot(tps,z);


%milieu pred-corr

Yn=[-1;0];
z=Yn(1);
tps=0;
for i=0:n-1
    
    Yn=Yn+h*F((i+0.5)*h,Yn+h/2*F(i*h,Yn));   
    z=[z,Yn(1)];
    tps=[tps,(i+1)*h];
end

plot(tps,z,'g');



%milieu RK4

Yn=[-1;0];
z=Yn(1);
tps=0;
for i=0:n-1
    
    k1=F(i*h,Yn);
    k2=F((i+0.5)*h,Yn+h/2*k1);
    k3=F((i+0.5)*h,Yn+h/2*k2);
    k4=F((i+1)*h,Yn+h*k3);
    
    
    Yn=Yn+h/6*(k1+2*k2+2*k3+k4);
    z=[z,Yn(1)];
    tps=[tps,(i+1)*h];
end

plot(tps,z,'b--');


%milieu shema adaptatif 4-5


[t,y] = ode45(@(t,y) F(t,y), [0,T], [-1;0]);

plot(t, y(:,1),'y--');

hold off


end


function res=F(t,vect)
res=[vect(2);5*vect(2)-6*vect(1)-4*exp(t)];
end