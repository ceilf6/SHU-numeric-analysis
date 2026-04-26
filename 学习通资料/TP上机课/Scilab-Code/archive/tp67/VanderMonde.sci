function a =  VanderMonde(t,y)
    // A matrice VdM Aa=y' a=A^(-1)*y'
    //sauvegarder en >sci puis executer(compiler)
    //puis executer sous prompt
    n=length(t);
    // Ecrire A matrice nulle: A=[]
    A=[];
    for i=1:n
       A=[A,(t.^(i-1))']
    end
    // A matrice VdM
    a=A^(-1)*y'
    
    P=poly(a,'x','coeff')
    
    inter=[min(t):0.001:max(t)];
    z=horner(P,inter)
    plot(inter,z)
    
    res2=horner(P,10^10)
    disp(res2)
    // teste avec [1,2,3,4] et [4,3,2,1]
    // on obtient des erreurs sur x2 et x3
    // pour t grand, ecart poly estime et vraipoly interpolation
endfunction
