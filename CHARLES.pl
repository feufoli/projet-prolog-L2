
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


%multiplie une ligne et une matrice

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


%multiplie une ligne par une colonne
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
	M = [[u,o],[o,u],[u,u],[o,o]].



%solution(matrice(M), V):-


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