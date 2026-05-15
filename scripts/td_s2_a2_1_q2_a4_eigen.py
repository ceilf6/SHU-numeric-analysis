import sympy as sp

a, lam = sp.symbols("a lam")

A4 = sp.Matrix(
    [
        [1, a, 0, 0],
        [0, 1, 0, 0],
        [1, 2, 3, 1],
        [-2, -(4 + a), -4, -1],
    ]
)

print("A4 =")
sp.print_latex(A4)

charpoly = sp.factor(A4.charpoly(lam).as_expr())
print("charpoly =", charpoly)
sp.print_latex(charpoly)

print("\nGeneric eigenvectors:")
for ev in sp.solve(sp.Eq(charpoly, 0), lam):
    print("lambda =", ev)
    ns = (A4 - ev * sp.eye(4)).nullspace()
    print(ns)
    for vec in ns:
        sp.print_latex(vec)

print("\nSpecial cases:")
for aval in [-2, 0]:
    M = A4.subs(a, aval)
    print("a =", aval)
    print("charpoly =", sp.factor(M.charpoly(lam).as_expr()))
    print("eigenvals =", M.eigenvals())
    for ev in M.eigenvals():
        ns = (M - ev * sp.eye(4)).nullspace()
        print("lambda =", ev, "nullity =", len(ns), "basis =", ns)
        for vec in ns:
            sp.print_latex(vec)
