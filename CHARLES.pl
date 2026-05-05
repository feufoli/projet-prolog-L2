
valeurbinaire(o).
valeurbinaire(u).

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
	mul_mat_binaire_2(M1, M2, R2),
	R = [R2].

mul_mat_binaire([ H |M1 ], M2 ,R):-
	nb_ligne([ H |M1 ], L),
	L > 1,
	mul_mat_binaire(M1, M2, R2),
	mul_mat_binaire_2([ H |M1 ], M2, R3),
	R = [R3 | R2].


%multiplie une ligne et une matrice : rend un vecteur

mul_mat_binaire_2(V1, V2, R):-
	nb_colonne(V2, C),
	C is 1,
	mul_vect_binaire(V1, V2, R2),
	R = [R2].

mul_mat_binaire_2(V1, [H | T], R):-
	nb_colonne([H | T ], C),
	C > 1,
	sep_vect([H | T], V2, Reste),
	mul_vect_binaire(V1, V2, R2),
	mul_mat_binaire_2(V1, Reste, R3),
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


vect(1, [u]).
vect(1, [o]).

vect(L, R):-
	L > 1,
	L2 is L-1,
	valeur_binaire(B),
	vect(L2, R2),
	R = [B | R2].



solution_binaire(M, V, Nombre):-
	matrice(M),
	nb_colonne(M, C),
	nb_ligne(M, L),
	creer_vect(C, Y, 0),
	creer_vect(L, V, Nombre),
	mul_mat_binaire_2(V, M, Y).


solution_binaire(M, V, Y, Nombre):-
	m_dur(M),
	y_dur(Y),
	nb_ligne(M, L),
	creer_vect(L, V, Nombre),
	mul_mat_binaire_2(V, M, Y).





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