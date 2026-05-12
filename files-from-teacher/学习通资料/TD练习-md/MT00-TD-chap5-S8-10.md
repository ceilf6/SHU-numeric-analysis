**Printemps 2026** 

**MT00/UTSEUS** 

## **Interpolation - Exercices de Travaux Dirigés** 

## **Exercice 1 (5.3 du polycopié de cours)** 

On considère les points du plan {( _ti_ , _zi_ ), 0 _≤ i ≤ n_ } avec _t_ 0 _< t_ 1 _<_ ... _< tn_ . 

1. Écrire l’équation de la droite passant par les points ( _ti_ , _zi_ ) et ( _ti +_ 1, _zi +_ 1) en utilisant la base de Lagrange. 

2. Écrire l’équation de la ligne brisée qui interpole tous les points. 

## **Exercice 2 (5.6 du polycopié de cours)** 

On a _t_ 0 _=_ 1, _t_ 1 _=_ 2, _t_ 2 _=_ 3, _f_ ( _t_ 0) _=_ 1, _f_ ( _t_ 1) _=_ 3, _f_ ( _t_ 2) _=_ 4. 

1. Écrire dans la base de Lagrange : 

   - (a) Le polynome _p_ 0 de degré 0 qui interpole _f_ en _t_ 0; 

   - (b) Le polynome _p_ 1 de degré 1 qui interpole _f_ en _t_ 0, _t_ 1; 

   - (c) Le polynome _p_ 2 de degré 2 qui interpole _f_ en _t_ 0, _t_ 1, _t_ 2. 

2. Écrire chacun des polynômes dans la base de Newton. 

## **Exercice 3 (5.9 du polycopié de cours)** 

La base de Lagrange pour les 4 points d’interpolation _ti = i_ , _i =_ 0,...,3 (exemple B.2.1 du polycopié de cours) est donnée par : 

**==> picture [468 x 25] intentionally omitted <==**

Considérons les données suivantes : _y_ 0 _=_[1] 2[,] _[ y]_[1] _[ =]_[ 1,] _[ y]_[2] _[ =]_[ 2,] _[ y]_[3] _[ = −]_ 2[1][. On obtient le polynôme d’interpolation] 

**==> picture [365 x 25] intentionally omitted <==**

Calculer les coefficients _ck_ du polynôme d’interpolation _p_ ( _t_ ) précédent, dans la base de Newton. 

## **Exercice 4** 

On suppose que la fonction _f_ est dérivable sur [ _a_ , _b_ ]. 

1. soient _t_ 1, _t_ 1 _[′]_[,] _[t]_[2][,] _[t]_ 2 _[′]_[quatre nombre réels distincts appartenant à [] _[a]_[,] _[b]_[]. Écrire le polymône] _[ p]_[ d’interpolation] de _f_ en _t_ 1, _t_ 1 _[′]_[,] _[t]_[2][,] _[t]_ 2 _[′]_[à l’aide des différences divisées.] 

2. Montrer que les coefficients du polynôme précédent ont une limite quand _t_ 1 _[′]_[tend vers] _[ t]_[1][ et] _[ t]_ 2 _[′]_[tend] vers _t_ 2. Montrer qu’alors _p_ peut s’écrire 

**==> picture [405 x 27] intentionally omitted <==**

avec _h = t_ 2 _− t_ 1, _yi = f_ ( _ti_ ), _di = f[′]_ ( _ti_ ) pour _i =_ 1,2. 

3. Montrer que l’on a alors _p_ ( _ti_ ) _= yi_ , _p[′]_ ( _ti_ ) _= di_ , _i =_ 1,2 

## **Exercice 5** 

1. Déterminer le polynôme d’interpolation à partir du système de VanderMonde pour les points _t_ 0 _= −_ 1, _t_ 1 _=_ 2, _t_ 2 _=_ 5 et les images _y_ 0 _= −_ 4, _y_ 1 _=_ 2, _y_ 2 _=_ 26. 

2. Déterminer le polynôme d’interpolation dans la base de Lagrange pour les points _t_ 0 _=_ 0, _t_ 1 _=_ 1, _t_ 2 _=_ 2, _t_ 3 _=_ 3 et les images _y_ 0 _= −_ 5, _y_ 1 _= −_ 3, _y_ 2 _= −_ 1, _y_ 3 _=_ 7. 

3. Déterminer le polynôme d’interpolation dans la base de Newton à partir de la méthode de différrences divisées pour les points _t_ 0 _= −_ 1, _t_ 1 _=_ 1, _t_ 2 _=_ 2, _t_ 3 _=_ 5 et les images _y_ 0 _=_ 17, _y_ 1 _=_ 1, _y_ 2 _= −_ 10, _y_ 3 _=_ 17. 

4. Soit _f_ la fonction interpolée dans la première question. On fait l’hypothèse supplémentaire que _′′′ −_ 

sup[ _−_ 1,5] _| f | =_ 1. Déterminer une majoration de l’erreur sur l’intervalle [ 1,5]. 

5. Soit _g_ la fonction interpolée dans la troisième question. On fait l’hypothèse supplémentaire que sup[ _−_ 1,5] _|g_[(] _[k]_[)] _| =_[10(] _[k]_ 2 _[+][k]_[1)][2] . Déterminer une majoration de l’erreur en _t =_ 3. 

6. Reprendre la troisième question en rajoutant le point du plan (6,24). 

## **Exercice 6** 

Soit _n_ un entier naturel. 

1. Calculer l’erreur commise en interpolant la fonction _f_ ( _t_ ) _= t[n]_ , définie sur l’intervalle [0,1], en les points _ti = i_ / _n_ , _i =_ 0,1,..., _n_ , à l’aide du polynôme d’interpolation de Lagrange de degré _n_ . Expliquer le résultat. 

2. Même question pour la fonction _g_ ( _t_ ) _= t[n][+]_[1] . 

## **Exercice 7** 

1. Déterminer le polynôme d’interpolation de la fonction _f_ ( _x_ ) _=_ cos( _πx_ ) aux points 0,1/3,1/2,1. 

2. En déduire un encadrement de cos([4] 7 _[π]_[).] 

3. On rajoute _t_ 4 _=_ 2/3. Calculer le nouveau polynôme d’interpolation. Que constate-t-on? L’encadrement de cos([4] 7 _[π]_[) et-il meilleur?] 

## **Exercice 8** 

On souhaite déterminer la spline cubique _g_ interpolant une fonction _f_ . 

1. Obtenir une spline cubique _g_ interpolant _f_ en { _ti = i_ } _i =_ 0..3. Est-elle l’unique spline cubique solution du problème? 

2. On souhaite obtenir une spline cubique _g_ interpolant _f_ en { _ti = i_ } _i =_ 0..4 suivant les conditions naturelles. On note _Pi_ i=0..3 les polynômes par morceaux obtenus. On pose _ai = g[′′]_ ( _ti_ ). Que valent _a_ 0 et _a_ 4? 

3. Soit _Qi_ (i=0..3) le polynôme d’interpolation de ( _ti_ , _ai_ ) et ( _ti +_ 1, _ai +_ 1). Déterminer _Qi_ . 

4. Quel est le lien entre _Qi_ et _Pi_ ? 

5. Déterminer _Pi_ en fonction des _ai_ et des _yi = f_ ( _i_ ). 

6. A partir des conditions sur les dérivées, en déduire une equation matricielle de type _T A = Y_ où _Y_ ne dépend que des _yi_ , _A_ que des _ai_ , et _T_ matrice numérique tridiagonale. 

7. Résoudre ce système avec la méthode de votre choix en considérant _y_ 0 _=_ 0, _y_ 1 _=_ 1, _y_ 2 _=_ 9, _y_ 3 _=_ 31, _y_ 4 _=_ 60. 

8. En déduire la fonction _g_ . 

## **Exercice 9** 

On souhaite obtenir une fonction de deux variables _P_ ( _x_ , _y_ ), polynômiale relativement à x et à y interpolant un ensemble de points de type { _f_ ( _xi_ , _y j_ )} donnés ci-dessous. 

|,_y j_)} don|nés ci-|dessous|.|
|---|---|---|---|
|_f_(_x_, _y_)|_x_0=1|_x_1=2|_x_2=3|
|_y_1=0|1|2||
|_y_2=2|-1|1|1|
|_y_3=5|4|8|2|



1. Écrire les polynômes de Lagrange _Li_ ( _x_ ) associés aux _xi_ . 

2. Écrire les polynômes de Lagrange _M j_ ( _y_ ) associés aux _y j_ . 

3. En déduire un polynôme bivarié _P_ ( _x_ , _y_ ) qui interpole l’ensemble les points de l’espace ( _xi_ , _y j_ , _f_ ( _xi_ , _y j_ )) donnés dans le tableau. 

## **Exercice 10 (Polynômes d’interpolation de Hermite.)** 

Soient _t_ 0, _t_ 1,..., _tn_ , _n +_ 1 valeurs distinctes de l’intervalle [ _a_ , _b_ ], soit _f_ une fonction, on suppose que l’on connait _f_ ( _t_ 0),... _f_ ( _tn_ ), _f[′]_ ( _t_ 0),..., _f[′]_ ( _tn_ ). On veut déterminer un polynôme _p_ de degré inférieur ou égal a 2 _n +_ 1 tel que : 

**==> picture [183 x 13] intentionally omitted <==**

1. Montrer que si _p_ existe il est unique. 

2. On cherche _p_ sous la forme 

**==> picture [217 x 29] intentionally omitted <==**

où _Li_ sont les polynômes de base de Lagrange relatifs aux points _t_ 0, _t_ 1,..., _tn_ et où _ri_ et _si_ sont des polynômes de degré inférieur ou égal à un. 

Déterminer l’expression des polynômes _ri_ et _si_ pour _i =_ 0,..., _n_ . 

Application : on choisit _n =_ 1, _t_ 0 _=_ 0, _t_ 1 _=_ 1, donner l’expression de _p_ ( _t_ ). 

Réponse : _p_ ( _t_ ) _= f_ (0)( _t −_ 1)[2] (2 _t +_ 1) _+ f_ (1) _t_[2] ( _−_ 2( _t −_ 1) _+_ 1) _+ f[′]_ (0)( _t −_ 1)[2] _t + f[′]_ (1) _t_[2] ( _t −_ 1). 

3. On cherche à évaluer l’erreur _e_ ( _t_ ) _= f_ ( _t_ ) _− p_ ( _t_ ). On note _φ_ ( _t_ ) _=_ ( _t − t_ 0)...( _t − tn_ ), on suppose que _f_ est 2 _n +_ 2 fois dérivable sur [ _a_ , _b_ ], on veut montrer qu’il existe _c ∈_ [ _a_ , _b_ ] tel que 

**==> picture [296 x 29] intentionally omitted <==**

- (a) Montrer que _e_ ( _ti_ ) _= e[′]_ ( _ti_ ) _=_ 0 pour _i =_ 0,..., _n_ . 

- (b) Montrer que (1) est vraie si _t = ti_ , _i =_ 0,..., _n_ . 

- (c) Soit _t ̸= ti_ , _i =_ 0,..., _n_ , on définit la fonction _g_ ( _z_ ) par 

**==> picture [151 x 27] intentionally omitted <==**

Montrer que 

- _g_ s’annule pour au moins _n +_ 2 valeurs distinctes de [ _a_ , _b_ ] 

- _g[′]_ s’annule pour au moins _n +_ 1 valeurs distinctes de [ _a_ , _b_ ]. 

Utiliser le théorème de Rolle pour montrer que _g[′]_ s’annule pour au moins 2 _n +_ 2 valeurs distinctes de [ _a_ , _b_ ]. 

Utiliser à nouveau le théorème de Rolle pour montrer que _g_[(2] _[n][+]_[2)] s’annule en au moins une valeur _c_ de l’intervalle ] _a_ , _b_ [. En déduire la relation (1). 

