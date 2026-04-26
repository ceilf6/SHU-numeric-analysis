R=sqrt(2)/2*[1,-1;1,1]
S=[0,1;1,0]
H=[4,0;0,4]
P=[1,0;0,0]

R*P
P*R
R*H
H*R
S*S




x=0:0.001:pi/2;
hold on
plot(x,sin(x))
plot(x,x.^3/6)
hold off
