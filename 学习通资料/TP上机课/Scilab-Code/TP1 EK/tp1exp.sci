function S=tp1exp(X)
S=0;
for k=0:20
    S=S+(X'*X)^k/factorial(k);
end
endfunction
