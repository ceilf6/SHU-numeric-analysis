function Erreur=Equadif(opt,h,Methode)

%opt=0; % choix de l'equadif
%h=0.1;
n=round(25/h)+1;
%Methode=[0,0,0,0,1,0]

%  1= Euler Expl
%  2= Euler Implicite
% 3=  Prediction 1 Correction  0 7.2.3
% 4=  Prediction 1 Correction  1 (trapeze)=Euler cauchy 7.2.5
% 5= Taylor ordre 2
% 6= RK4

Erreur=0.*Methode;

hold on



inter=h*(0:1:n-1);
[z,df1,df2,zimplicite,truesol]=f_equadif(inter,0,opt,h);

if (isreal(truesol))
       truesol=1i*truesol+inter;
end
  plot(truesol,'g');


if (Methode(1)==1)
    traj=[1];
    t=0;
    for j=1:n-1
        
        traj(j+1)=traj(j)+h*f_equadif(t,traj(j),opt,h);
        t=t+h;
    end
    
    
  
    if (isreal(traj))
       traj=1i*traj+inter;
    end
     Erreur(1)=max(abs(truesol-traj));
  
  plot(traj);
end

if (Methode(2)==1)
    traj=[1];
    t=0;
    for j=1:n-1
        [z,df1,df2,zimplicite]=f_equadif(t+h,traj(j),opt,h);
        traj(j+1)=zimplicite;
        t=t+h;
    end
    
    if (isreal(traj))
       traj=1i*traj+inter;
    end
   Erreur(2)=max(abs(truesol-traj));
  plot(traj,'r');
end


if (Methode(3)==1)
    traj=[1];
    t=0;
    for j=1:n-1
        temp=traj(j)+h*f_equadif(t,traj(j),opt,h);
        traj(j+1)=traj(j)+h*f_equadif(t+h,temp,opt,h);
        t=t+h;
    end
    
    if (isreal(traj))
       traj=1i*traj+inter;
    end
   Erreur(3)=max(abs(truesol-traj));
  plot(traj,'g');
end


if (Methode(4)==1)
    traj=[1];
    t=0;
    for j=1:n-1
        temp=traj(j)+h*f_equadif(t,traj(j),opt,h);
        traj(j+1)=traj(j)+h/2*(f_equadif(t,traj(j),opt,h)+f_equadif(t+h,temp,opt,h));
        t=t+h;
    end
    
   if (isreal(traj))
       traj=1i*traj+inter;
   end
   Erreur(4)=max(abs(truesol-traj));
   
  plot(traj,'g');
end

% if (Methode(6)==1)
%     traj=[1];
%     t=0;
%     for j=1:n-1
%         temp=traj(j)+h*f_equadif(t,traj(j),opt,h);
%         temp=traj(j)+h*f_equadif(t+h,temp,opt,h);
%         traj(j+1)=traj(j)+h/2*(f_equadif(t,traj(j),opt,h)+f_equadif(t+h,temp,opt,h));
%         t=t+h;
%     end
%     
%     if (isreal(traj))
%        traj=1i*traj+inter;
%     end
%    Erreur(6)=max(abs(truesol-traj));
%   plot(traj,'g');
% end



if (Methode(5)==1)
    traj=[1];
    t=0;
    for j=1:n-1
        [z,df1,df2]=f_equadif(t,traj(j),opt,h);
        traj(j+1)=traj(j)+h*z+h^2/2*(df1+z*df2);
        t=t+h;
    end
    
    if (isreal(traj))
       traj=1i*traj+inter;
    end
   Erreur(5)=max(abs(truesol-traj));
  plot(traj,'g');
end



%[t,y] = ode45(@(t,y) 2*y+exp(-t), tspan, 1);


hold off

