function a= VDM(t,y)
    // notes: Aa=y et donc a=A^(-1)y
    
    n=length(t)
    A=[]
    for i=1:n
        A=[A,(t^(i-1))']
    end
    disp(A)
    a=A^(-1)*y';
    //P=poly(a,'x','coeff')
    //horner(P,5.25)
    //inter=[min(t):0.001:max(t)];
    //z=horner(P,inter)
    //plot(inter,z)
endfunction
