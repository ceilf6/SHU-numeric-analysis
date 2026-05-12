// MT00-P16
//
// Second membre, solution exacte et schémas
//
//

function lhs=f(t,y)
    lhs=-t*y+t;
endfunction

function y=solution(t)
    // Solution vraie
    y=1-exp(-t.^2/2);
endfunction

function y=euler(y0,t,f)
    h=t(2)-t(1);
    n=length(t);
    y=zeros(1,n);
    y(1)=y0;
    for i=1:n-1
        k1=f(t(i),y(i));
        y(i+1)=y(i)+h*k1;
    end
endfunction

function y=pointMilieu(y0,t,f)
    h=t(2)-t(1);
    n=length(t);
    y=zeros(1,n);
    y(1)=y0;
    for i=1:n-1
        k1=f(t(i),y(i));
        k2=f(t(i)+h/2,y(i)+h/2*k1);
        y(i+1)=y(i)+h*k2;
    end
endfunction

function y=rungeKutta4(y0,t,f)
    h=t(2)-t(1);
    n=length(t);
    y=zeros(1,n);
    y(1)=y0;
    for i=1:n-1
        k1=f(t(i),y(i));
        k2=f(t(i)+h/2,y(i)+h/2*k1);
        k3=f(t(i)+h/2,y(i)+h/2*k2);
        k4=f(t(i)+h,y(i)+h*k3);
        y(i+1)=y(i)+h/6*(k1+2*k2+2*k3+k4);    
    end
endfunction


T=4;
valeurN=[5 10 20];
tt=linspace(0,T,1000);

clf

for i=1:length(valeurN)

    h=T/valeurN(i);
    t=0:h:T;
    
    subplot(3,3,i)
    plot(t,euler(0,t,f),'o',tt,solution(tt));
    title(sprintf('Euler, N=%d',valeurN(i)))
    
    subplot(3,3,i+3)
    plot(t,pointMilieu(0,t,f),'o',tt,solution(tt));
    title(sprintf('point milieu, N=%d',valeurN(i)))

    subplot(3,3,i+6)        
    plot(t,rungeKutta4(0,t,f),'o',tt,solution(tt));
    title(sprintf('RK4, N=%d',valeurN(i)))

end

