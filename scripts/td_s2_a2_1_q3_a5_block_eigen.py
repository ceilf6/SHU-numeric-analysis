import sympy as sp

lam = sp.symbols("lam")

A1 = sp.Matrix(
    [
        [2, 0, 4],
        [3, -4, 12],
        [1, -2, 5],
    ]
)
A2 = sp.Matrix(
    [
        [-1, 1, 1],
        [1, -1, 1],
        [1, 1, -1],
    ]
)
A5 = sp.diag(A1, A2)

print("A5 =")
sp.print_latex(A5)

charpoly = sp.factor(A5.charpoly(lam).as_expr())
print("charpoly =", charpoly)
sp.print_latex(charpoly)

print("\nEigenvalues and eigenspaces:")
for ev in sorted(A5.eigenvals().keys(), key=lambda x: float(sp.re(x))):
    ns = (A5 - ev * sp.eye(6)).nullspace()
    print("lambda =", ev, "algebraic multiplicity =", A5.eigenvals()[ev], "geometric multiplicity =", len(ns))
    for vec in ns:
        sp.print_latex(vec)
