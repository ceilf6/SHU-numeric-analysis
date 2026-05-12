function cercleeuler

h=0.05;
traj=[1];
zn=1;
z2n=1;
traj2=[1];
traj3=[1];
z3n=1;
for j=1:500;
    zn=(1+1i*h)*zn;
    z2n=z2n/(1-1i*h);
    traj=[traj,zn];
    traj2=[traj2,z2n];
    %if (mod(j,2)==0)
    if(rand>0.5)    
        
        z3n=z3n/(1-1i*h);
    else
        z3n=z3n*(1+1i*h);
    end
    traj3=[traj3,z3n];
end
hold on
plot(traj)
plot(traj2,'.r')
plot(traj3,'g')
hold off
