% Rules
parent(john, jim).
parent(john, lisa).
parent(mary, jim).
parent(mary, lisa).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

% Backward Chaining
solve(X) :- goal(X).

% Example Query
goal(grandparent(john, lisa)).

output:
% c:/Users/manee/OneDrive/Documents/Prolog/30.pl compiled 0.00 sec, 7 clauses
?- goal(grandparent(john, lisa)).
true.
