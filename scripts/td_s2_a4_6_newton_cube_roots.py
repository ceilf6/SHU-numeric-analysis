import sympy as sp

x1, x2 = sp.symbols("x1 x2")

f = sp.Matrix(
    [
        x1**3 - 3 * x1 * x2**2 - 1,
        3 * x1**2 * x2 - x2**3,
    ]
)
J = f.jacobian([x1, x2])

starts = [
    sp.Matrix([1, 1]),
    sp.Matrix([0, 1]),
    sp.Matrix([0, -1]),
]

print("f(x) =")
sp.print_latex(f)
print("Jacobian J_f(x) =")
sp.print_latex(J)

for start in starts:
    subs = {x1: start[0], x2: start[1]}
    f0 = f.subs(subs)
    j0 = J.subs(subs)
    delta = j0.LUsolve(f0)
    next_x = sp.simplify(start - delta)

    print("\nx^(0) =")
    sp.print_latex(start)
    print("f(x^(0)) =")
    sp.print_latex(f0)
    print("J_f(x^(0)) =")
    sp.print_latex(j0)
    print("Delta solving J Delta = f =")
    sp.print_latex(delta)
    print("x^(1) = x^(0) - Delta =")
    sp.print_latex(next_x)
