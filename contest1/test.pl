somaElemLista([], 0).

somaElemLista([H|T], Sum) :-
atom_number(H, D),
somaElemLista(T, R),
Sum is R + D.


solve(A, B, _) :-
B < A,
writeln(-1).

solve(A, B, C) :-
B >= A,

number_string(B, Bstr),
string_chars(Bstr, Z),

somaElemLista(Z, Sum),

Sum =:= C,
writeln(B),
!.

solve(A, B, C) :-
B >= A,
B1 is B - 1,
solve(A, B1, C).


main :-
read_string(user_input, "\n", "\n", _, Nstr),
read_string(user_input, "\n", "\n", _, Mstr),
read_string(user_input, "\n", "\n", _, Sstr),

number_string(N, Nstr),
number_string(M, Mstr),
number_string(S, Sstr),

solve(N, M, S).
