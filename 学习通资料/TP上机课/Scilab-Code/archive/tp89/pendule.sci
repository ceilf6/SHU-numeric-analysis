function xprime=pendule(t,x)
	theta=x(1);
	thetaprime=x(2);
	xprime=[thetaprime;-g/L*sin(theta)];
endfunction

g=9.82;
L=2;
omega=sqrt(g/L);
t=linspace(0,10,500);
theta0=63*%pi/64;
x=ode([theta0;0],0,t,pendule);
clf
plot(t,x(1,:),t,theta0*cos(omega*t));

