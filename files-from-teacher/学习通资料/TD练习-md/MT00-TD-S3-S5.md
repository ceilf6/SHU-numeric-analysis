Chap 2 

MT00 

TD 

## **MT00 - TD** 

## **Chapitre 2 - Résolution des systèmes linéaires** 

## **Exercice 1** 

1. Soient _A_ une matrice appartenant à _Mn_ , _m_ , _y ∈_ R _[n]_ et _z ∈_ R _[m]_ . 

   - (a) Quelle est la taille de la matrice _Az_ ? _y[⊤] A_ ? 

   - (b) Que valent leurs coefficients? 

2. Soit _A_ une matrice appartenant à _Mn_ , _m_ . Soient { _e_ 1, _e_ 2,..., _em_ } la base canonique de R _[m]_ et { _f_ 1, _f_ 2,..., _fn_ } la base canonique de R _[n]_ . 

   - (a) Que valent _Aei_ , (1 _≤ i ≤ m_ )? 

   - (b) Que valent ( _f j_ ) _[⊤] A_ , (1 _≤ j ≤ n_ )? 

3. Soient _y_ et _z ∈_ R _[n]_ . Quelle est la taille de la matrice _y[⊤] z_ ? 

4. Soient _y ∈_ R _[n]_ et _z ∈_ R _[m]_ . Quelle est la taille de la matrice _yz[⊤]_ ? 

5. Soient _A_ une matrice appartenant à _Mn_ , _m_ et _B_ une matrice appartenant à _Mm_ , _p_ . On note _B_ 1,..., _Bp_ les colonnes de B. Sous quelle forme peut-on écrire le produit _AB_ ? 

6. Soient _A_ une matrice appartenant à _Mn_ , _m_ et _B_ une matrice appartenant à _Mm_ , _p_ . On note _A[AB]_[ ?] ~~1~~[,...,] _[ A]_ ~~_n_~~[les lignes de A. Sous quelle forme peut-on écrire le produit] 

7. Soient Λ une matrice diagonale appartenant à _Mn_ , _n_ , _A_ une matrice appartenant à _Mn_ , _m_ et _B_ une matrice appartenant à _Mm_ , _n_ . Quels sont les termes des matrices Λ _A_ et _B_ Λ ? 

8. Soit _A_ une matrice appartenant à _Mn_ , _n_ régulière (inversible). Montrer que l’inversion de _A_ se ramène à la résolution de _n_ systèmes linéaires de la forme _Ax = b_ . 

## **Exercice 2** 

On définit la matrice _A_ , à _n_ lignes et _n_ colonnes par 

**==> picture [133 x 73] intentionally omitted <==**

On veut résoudre _Ax =_ 0. 

1. Montrer en résolvant les _n −_ 1 premières équations que _xi = ix_ 1, _i =_ 1,..., _n_ . 

2. Résoudre la dernière équation et en déduire que _x =_ 0. 

3. En déduire que _A_ est inversible. 

1 

Chap 2 

MT00 

TD 

## **Exercice 3** 

Soient _A ∈ Mnn_ (R) et _B ∈ Mnn_ (R) deux matrices triangulaires inférieures. Montrer que _C = AB_ est une matrice triangulaire inférieure et que les termes de la diagonale de _C_ vérifient : _cii = aii × bii_ (pour _i =_ 1,..., _n_ ). 

## **Exercice 4** 

On veut résoudre le système _Ax = y_ où _A ∈ Mnn_ (R) est _tridiagonale_ et _y ∈_ R _[n]_ : 

**==> picture [267 x 93] intentionally omitted <==**

1. Montrer, par récurrence sur _i_ , que l’on peut se ramener au système suivant : 

**==> picture [199 x 27] intentionally omitted <==**

où l’on déterminera les _ei_ , _i =_ 1,.., _n −_ 1 et les _fi_ , _i =_ 1,..., _n_ . On suppose que toutes les divisions nécessaires pour déterminer ces coefficients sont possibles. 

2. La méthode précédente, qui permet de résoudre un système dont la matrice est tridiagonale, s’appelle méthode de Richtmayer. Ecrire l’algorithme de cette méthode. 

## **Exercice 5** 

**==> picture [455 x 55] intentionally omitted <==**

## **Exercice 6** 

Soit _A_ la matrice 

**==> picture [89 x 41] intentionally omitted <==**

où _a_ est un réel donné et b=(4,5,3) _[⊤]_ . 

1. Résoudre le système _Ax = b_ suivant les valeurs de _a_ , en appliquant l’algorithme de Gauss. 

2. En déduire la factorisation _LU_ de _A_ , suivant les valeurs de _a_ , quand cela est possible. 

2 

Chap 2 

MT00 

TD 

## **Exercice 7** 

Soit _A_ la matrice 

**==> picture [134 x 60] intentionally omitted <==**

1. Vérifier que cette matrice admet une factorisation _LU_ avec _L_ triangulaire inférieure à diagonale unité et _U_ triangulaire supérieure. 

2. Calculer les matrices _L_ et _U_ en utilisant l’algorithme de Doolittle. 

## **Exercice 8** 

Soit _A_ une matrice dont on connait la factorisation _LU_ suivante : 

**==> picture [158 x 41] intentionally omitted <==**

1. La matrice _A_ est-elle inversible? 

2. Résoudre le système _Ax = b_ avec _b =_ (1,6,6) _[⊤]_ . 

3. Calculer l’inverse de _A_ . 

## **Exercice 9** 

Soit _A_ la matrice 

**==> picture [80 x 41] intentionally omitted <==**

1. Résoudre le système _Ax = b_ avec _b =_ (1,1,1) _[⊤]_ . 

2. Puisque _A_ n’admet pas de factorisation _LU_ , quelle matrice en admet une? Précisez cette factorisation. 

3 

Chap 2 

MT00 

TD 

## **Exercice 10** 

Soit _A_ la matrice 

**==> picture [86 x 41] intentionally omitted <==**

**==> picture [199 x 12] intentionally omitted <==**

**==> picture [216 x 14] intentionally omitted <==**

où 

**==> picture [116 x 46] intentionally omitted <==**

en déduire que _A_ est définie positive. 

2. Calculer la matrice _B_ triangulaire inférieure à diagonale positive telle que 

**==> picture [46 x 14] intentionally omitted <==**

en utilisant l’algorithme vu en cours (ligne par ligne ou colonne par colonne). 

4 

