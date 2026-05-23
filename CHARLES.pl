
valeur_binaire(o).
valeur_binaire(u).

add_binaire(o, o, o).
add_binaire(u, u, o).
add_binaire(u, o, u).
add_binaire(o,u, u).

mul_binaire(o, o, o).
mul_binaire(o, u, o).
mul_binaire(u, o, o).
mul_binaire(u, u, u).


%matrice en dur
matrice(M):-
	M = [[u,o],[o,u],[u,u],[o,u]].


m_facile(M):-
	M = [[o,u,o,o,o,u,u,o,o,o,o,o,u],
[o,u,u,u,u,u,u,u,u,o,u,u,o],
[u,o,o,u,o,o,u,o,o,u,u,o,u],
[u,u,o,u,u,o,o,u,u,o,o,u,u],
[u,u,u,o,o,u,o,o,o,o,u,o,o],
[u,o,o,u,u,u,u,o,o,o,o,u,o],
[u,o,o,o,o,o,u,o,u,o,o,o,o],
[o,u,u,o,o,o,u,u,u,u,o,o,o],
[u,u,u,u,u,u,o,o,o,o,u,u,o],
[o,o,u,o,o,u,o,u,u,u,u,u,u],
[u,o,u,u,o,u,o,u,o,o,o,o,o],
[o,u,u,o,u,u,o,o,o,u,u,u,u],
[o,o,u,o,u,o,o,u,u,o,o,o,u],
[o,u,o,u,u,u,u,o,o,u,o,o,o],
[o,u,u,u,o,o,o,o,u,o,u,o,o],
[o,u,u,u,o,o,u,o,o,o,u,u,o],
[u,u,o,o,o,u,u,u,o,o,o,u,o],
[u,o,o,u,u,o,o,o,u,o,o,o,o],
[u,o,u,u,o,u,o,o,u,u,u,u,u],
[u,o,o,u,o,o,o,u,u,o,u,u,u],
[u,u,o,o,o,u,o,o,o,u,u,u,u],
[o,o,u,u,o,o,o,u,u,o,u,u,o],
[o,u,o,o,u,u,o,u,u,o,o,u,o],
[u,u,u,u,o,u,o,u,o,u,o,u,o],
[o,o,o,u,u,u,u,o,u,o,o,o,u],
[o,o,o,o,o,u,u,o,o,o,o,o,u]].

y_facile(Y):-
	Y = [o,u,u,u,o,o,u,u,o,u,o,o,u].

m_moyen(M):-
	M = [[u,o,u,o,u,u,o,u,u,u,o,o,o],
[u,o,u,o,o,u,u,o,o,o,u,u,o],
[u,u,u,u,o,u,o,o,o,o,u,u,u],
[o,o,o,o,o,u,u,o,u,o,u,u,o],
[o,u,o,o,o,u,o,u,o,u,u,o,u],
[u,u,u,o,u,u,o,u,o,u,o,o,u],
[o,u,u,u,u,o,o,u,o,u,u,o,u],
[u,u,o,o,u,u,o,u,o,u,u,o,u],
[o,o,u,u,u,u,u,u,u,o,u,u,o],
[u,u,u,u,o,o,u,u,o,u,u,u,o],
[u,o,o,u,u,o,o,o,o,u,u,u,u],
[u,u,u,u,u,u,u,o,u,o,u,o,u],
[u,o,o,u,o,o,o,u,u,o,o,u,o],
[o,u,o,u,u,o,u,o,o,u,u,o,u],
[o,u,o,o,o,o,o,u,u,u,u,o,u],
[u,u,o,u,o,u,u,u,u,o,o,u,u],
[u,u,u,o,o,u,u,o,o,u,o,u,u],
[o,u,o,u,u,o,o,o,u,o,u,u,u],
[o,u,u,o,o,u,o,u,o,u,u,u,u],
[u,o,o,u,o,o,o,u,o,u,o,u,u],
[o,o,o,u,u,u,o,u,u,u,o,o,u],
[o,o,o,u,o,o,u,u,u,u,u,u,o],
[u,u,u,u,u,o,o,u,u,u,o,o,u],
[o,u,o,u,o,o,o,u,u,u,u,o,u],
[o,u,o,u,o,o,o,u,o,u,o,u,u],
[o,o,u,o,u,o,o,o,u,o,o,o,o]].

y_moyen(Y):-
	Y = [u,u,o,o,o,o,o,o,u,o,u,o,u].

m_dur(M):-
	M = [[u,u,u,o,u,o,u,u,o,u,o,u,o,o,o],
[u,o,o,o,u,u,o,u,u,u,o,u,u,u,o],
[o,u,u,u,o,o,u,o,o,o,u,u,u,u,o],
[o,o,o,u,u,o,o,u,u,o,o,o,o,o,o],
[u,o,o,o,u,o,o,o,o,o,o,u,o,o,o],
[u,u,o,u,u,o,o,u,u,o,o,o,o,u,o],
[u,o,o,o,u,o,u,o,u,u,o,o,u,o,o],
[u,u,o,u,o,u,u,u,o,u,u,u,u,u,o],
[u,o,o,o,u,u,u,u,u,u,o,o,o,u,u],
[o,u,u,o,u,o,u,u,u,u,u,o,u,o,o],
[u,o,u,o,u,u,o,o,u,o,u,u,u,u,o],
[o,u,o,u,o,u,o,o,u,u,u,o,u,u,o],
[o,u,u,o,o,o,o,o,u,u,o,u,o,o,o],
[u,u,o,o,u,u,o,o,u,u,u,o,u,u,o],
[o,o,u,o,o,o,u,o,o,o,u,u,u,u,u],
[u,u,o,o,o,o,u,o,u,o,u,u,o,u,u],
[o,u,u,o,u,o,u,o,o,u,u,o,u,u,u],
[o,u,u,u,o,o,o,o,u,o,o,u,u,o,o],
[u,o,u,o,u,o,u,o,u,o,u,u,u,o,o],
[o,u,u,o,u,u,u,u,u,o,o,u,o,u,u],
[u,u,u,u,u,o,u,o,o,u,u,u,u,o,u],
[o,o,u,u,u,o,o,u,u,o,u,u,o,o,o],
[u,u,u,u,u,u,u,o,o,u,u,o,u,u,o],
[u,o,u,o,u,u,u,u,u,o,u,o,o,u,u],
[u,o,o,o,u,u,u,u,u,u,u,u,u,u,u],
[o,o,o,u,o,o,o,o,o,u,o,o,o,o,o],
[u,u,o,u,o,o,u,u,o,o,u,o,o,u,u],
[u,o,u,o,o,u,o,o,o,o,o,o,u,u,u],
[u,o,o,u,o,u,u,o,u,u,o,o,u,u,u],
[o,u,o,o,o,o,o,u,u,o,o,o,u,u,u]].

y_dur(Y):-
	Y = [o,u,u,o,u,u,u,u,u,o,o,o,o,o,u].

%donne les dimantions

nb_ligne( [ ] , 0).
nb_ligne(H, 1):-
	H = [ _ | []].
nb_ligne(H, 1):-
	H \= [ _ | _ ].
nb_ligne( [ _ | T ] , R ):-
	nb_ligne(T , R2),
	T \= [],
	R is R2 +1.

nb_colonne([], 0).
nb_colonne([ H | _ ], R):-
	nb_ligne(H, R).
nb_colonne(H, 1):-
	 \+ H = [_ | _ ].


%multiplie deux matrices

mul_mat_binaire([M1], M2 ,R):-
	nb_ligne([M1] , L),
	L is 1,
	mul_vect_mat_binaire(M1, M2, R2),
	R = [R2].

mul_mat_binaire([ H |M1 ], M2 ,R):-
	nb_ligne([ H |M1 ], L),
	L > 1,
	mul_mat_binaire(M1, M2, R2),
	mul_vect_mat_binaire([ H |M1 ], M2, R3),
	R = [R3 | R2].


%multiplie une ligne et une matrice : rend un vecteur

mul_vect_mat_binaire(V1, V2, R):-
	nb_colonne(V2, C),
	C is 1,
	mul_vect_binaire(V1, V2, R2),
	R = [R2].

mul_vect_mat_binaire(V1, [H | T], R):-
	nb_colonne([H | T ], C),
	C > 1,
	sep_vect([H | T], V2, Reste),
	mul_vect_binaire(V1, V2, R2),
	mul_vect_mat_binaire(V1, Reste, R3),
	R = [R2 | R3].


%multiplie une ligne par une colonne : rend une valeur binaire

mul_vect_binaire( [H1 |T1 ], [[H2] | _], R):-
	nb_ligne([H1 |T1 ], L),
	L is 1,
	mul_binaire(H1, H2, R2),
	add_binaire(o, R2, R).

mul_vect_binaire( [H1 |T1 ], [[H2] | T2], R):-
	nb_ligne([H1 |T1 ], L),
	L > 1,
	mul_binaire(H1, H2, R2),
	mul_vect_binaire(T1, T2, R3),
	add_binaire(R3, R2, R).
	


%vecteur avec contrain de u

creer_vect(1, [u], 1).
creer_vect(1, [o], 0).

creer_vect(L, R, N):-
	L > 1,
	L2 is L-1,
	N > 0,
	N2 is N-1,
	creer_vect(L2, R2, N2),
	R = [u | R2].

creer_vect(L, R, N):-
	L > 1,
	L > N,
	L2 is L-1,
	creer_vect(L2, R2, N),
	R = [o | R2].

%fais un vecteur d une longueur sans contrainte
vect(1, [u]).
vect(1, [o]).

vect(L, R):-
	L > 1,
	L2 is L-1,
	valeur_binaire(B),
	vect(L2, R2),
	R = [B | R2].



%sépare la premire colonne d une matrice
sep_vect([[ H | T1 ]], V2, R):-
	nb_ligne([[ H | T1 ]], L),
	L is 1,
	V2 = [[H]],
	R = [T1].

sep_vect([ [ H | T1 ] | T2 ], V2, R):-
	nb_ligne([ [ H | _ ] | T2 ], L),
	L > 1,
	sep_vect(T2, H2, R2),
	V2 = [[H] | H2],
	R = [T1 | R2].



solution_binaire(M, V, Nombre):-
	matrice(M),
	nb_colonne(M, C),
	nb_ligne(M, L),
	creer_vect(C, Y, 0),
	creer_vect(L, V, Nombre),
	mul_vect_mat_binaire(V, M, Y).

% a retirer les set up de matrice pour testing m dur et y dur

solution_binaire(M, V, Y, Nombre):-
	nb_ligne(M, L),
	creer_vect(L, V, Nombre),
	mul_vect_mat_binaire(V, M, Y).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%partie Ternaire

%10 u/d
m_facile_t(M):-
	M = [[u,o,u,o,d,o,o,d,o,u],
	[o,o,o,o,d,o,o,o,d,d],
	[d,d,d,d,o,u,o,o,o,o],
	[u,o,d,o,u,u,u,o,d,d],
	[o,d,d,u,d,d,u,o,o,o],
	[u,u,u,o,d,d,d,o,d,u],
	[d,u,o,o,u,o,o,d,o,d],
	[d,d,u,d,o,o,o,d,u,o],
	[o,u,o,d,d,d,o,o,d,d],
	[u,o,d,u,d,u,o,d,o,u],
	[d,o,d,d,d,d,d,d,d,o],
	[d,u,d,o,d,d,o,o,d,d],
	[o,o,d,d,u,d,d,o,o,d],
	[d,d,o,u,u,d,d,o,o,u],
	[d,d,u,d,u,u,o,u,o,u],
	[d,u,u,u,u,u,o,o,o,d],
	[d,o,u,u,d,u,o,d,u,u],
	[d,o,o,u,u,o,d,d,o,o],
	[d,d,u,o,u,u,o,o,o,d],
	[d,o,d,d,o,u,o,o,d,o]].



y_facile_t(Y):-
	Y = [d,d,d,d,o,u,d,d,u,o].

%8 u/5
m_moyen_t(M):-
	M = [[d,o,d,d,u,u,o,d,o,u],
	[d,o,d,u,u,u,o,u,u,o],
	[d,o,o,o,o,o,o,d,o,u],
	[o,o,d,u,o,d,o,u,u,d],
	[o,o,u,o,d,u,u,d,u,u],
	[d,o,u,d,o,o,o,u,d,d],
	[d,o,u,o,u,d,u,d,o,u],
	[d,o,u,d,d,d,o,d,d,d],
	[o,o,o,u,d,u,u,d,d,o],
	[o,u,o,d,o,o,d,o,u,o],
	[o,u,o,u,o,o,u,o,o,d],
	[u,o,o,o,d,o,o,u,d,d],
	[d,u,u,u,d,o,u,u,u,d],
	[d,o,u,u,o,o,u,u,u,o],
	[u,u,d,d,o,d,u,o,u,o],
	[u,o,o,u,o,d,o,d,o,o],
	[o,d,d,o,o,o,u,d,u,o],
	[o,u,u,d,d,o,u,u,o,o],
	[d,u,u,o,u,d,u,u,u,u],
	[u,o,d,u,d,u,d,o,u,d]].


y_moyen_t(Y):-
	Y = [u,d,o,o,d,d,d,d,o,u].

%5u/d
m_dur_t(M):-
	M = [[o,d,d,o,d,o,d,o,d,d],
	[d,o,o,o,u,d,o,o,d,u],
	[u,o,d,d,o,u,d,d,u,u],
	[d,o,u,u,o,o,d,o,d,o],
	[d,u,u,u,o,o,o,d,o,u],
	[d,o,u,d,u,u,d,d,d,u],
	[o,d,d,u,u,u,d,u,u,u],
	[d,d,u,d,o,o,d,o,d,u],
	[o,u,o,d,u,u,d,o,u,u],
	[o,o,d,u,d,u,u,d,d,o],
	[u,u,o,o,d,o,d,u,o,u],
	[o,d,u,o,u,d,o,d,o,d],
	[u,o,d,d,u,u,d,o,d,u],
	[u,o,u,u,d,u,u,o,u,o],
	[d,u,o,o,d,o,d,o,o,u],
	[o,o,o,d,d,u,o,o,u,d],
	[o,o,o,d,d,o,o,o,u,u],
	[u,o,o,d,u,d,d,d,u,o],
	[d,u,u,u,o,d,o,o,d,u],
	[o,u,d,d,o,d,d,o,o,o]].
		
y_dur_t(Y):-
	Y = [u,o,d,d,d,u,o,u,d,u].



valeur_ternaire(o).
valeur_ternaire(u).
valeur_ternaire(d).


add_ternaire(o, o, o).
add_ternaire(u, u, d).
add_ternaire(u, o, u).
add_ternaire(o, u, u).

add_ternaire(d, u, o).
add_ternaire(u, d, o).
add_ternaire(d, d, u).

add_ternaire(o, d, d).
add_ternaire(d, o, d).



mul_ternaire(o, o, o).
mul_ternaire(o, u, o).
mul_ternaire(u, o, o).
mul_ternaire(u, u, u).

mul_ternaire(d, o, o).
mul_ternaire(o, d, o).
mul_ternaire(d, d, u).

mul_ternaire(d, u, d).
mul_ternaire(u, d, d).


vect_ternaire(1, [o], 0).
vect_ternaire(1, [u], 1).
vect_ternaire(1, [d], 1).

vect_ternaire(L, V, N):-
	L > 1,
	N > 0, 
	L2 is L-1,
	N2 is N-1,
	vect_ternaire(L2, V2, N2),
	valeur_ternaire(B),
	B \= o,
	V = [ B | V2].

vect_ternaire(L, V, N):-
	L > 1,
	N < L, 
	L2 is L-1,
	vect_ternaire(L2, V2, N),
	V = [ o | V2].

% V x V

mul_vect_ternaire( [H1 |T1 ], [[H2] | _], R):-
	nb_ligne([H1 |T1 ], L),
	L is 1,
	mul_ternaire(H1, H2, R2),
	add_ternaire(o, R2, R).

mul_vect_ternaire( [H1 |T1 ], [[H2] | T2], R):-
	nb_ligne([H1 |T1 ], L),
	L > 1,
	mul_ternaire(H1, H2, R2),
	mul_vect_ternaire(T1, T2, R3),
	add_ternaire(R3, R2, R).


% V x M

mul_vect_mat_ternaire(V1, V2, R):-
	nb_colonne(V2, C),
	C is 1,
	mul_vect_ternaire(V1, V2, R2),
	R = [R2].

mul_vect_mat_ternaire(V1, [H | T], R):-
	nb_colonne([H | T ], C),
	C > 1,
	sep_vect([H | T], V2, Reste),
	mul_vect_ternaire(V1, V2, R2),
	mul_vect_mat_ternaire(V1, Reste, R3),
	R = [R2 | R3].


% solution

matrice_t(M):-
	M = [[u,d],[d,u],[u,o],[o,u]].

solution_ternaire(M, V, Nombre):-
	nb_ligne(M, L),
	nb_colonne(M, C),
	vect_ternaire(C, Y, 0),
	vect_ternaire(L, V, Nombre),
	mul_vect_mat_ternaire(V, M, Y).


%veritable

solution_ternaire(M, V, Y, Nombre):-
	nb_ligne(M, L),
	vect_ternaire(L, V, Nombre),
	mul_vect_mat_ternaire(V, M, Y).
