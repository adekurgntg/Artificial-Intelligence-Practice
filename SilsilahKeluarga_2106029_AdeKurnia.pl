ayah(john, peter).
ayah(john, mary).
ayah(david, liza).
ayah(david, john).
ayah(jack, susan).
ayah(jack, ray).
ibu(susan, peter).
ibu(susan, mary).
ibu(amy, liza).
ibu(amy, john).
ibu(karen, susan).
ibu(karen, ray).
menikah(john, susan).

is_ayah(X, Y) :- ayah(X, Y).
is_ibu(A, B) :- ibu(A, B).
is_anak(Y, X) :- ayah(X, Y).
is_anak(B, A) :- ibu(A, B).
is_sodara(Y, Z) :- ayah(X, Y), ayah(X, Z).
is_kakek(X, Z) :- ayah(X, Y), is_ayah(Y, Z).
is_nenek(A, C) :- ibu(A, B), is_ibu(B, C).




















