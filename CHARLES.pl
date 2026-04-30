
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
	 \+ H = [_ | _ ].
nb_ligne( [ _ | T ] , R ):-
	nb_ligne(T , R2),
	R is R2 +1.

nb_colonne([], 0).
nb_colonne([ H | _ ], R):-
	nb_ligne(H, R).
nb_colonne(H, 1):-
	 \+ H = [_ | _ ].



	