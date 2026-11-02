:- use_module(library(clpfd)).

% Basic Arithmetic Operations
add(X, Y, Result) :- Result #= X + Y.
subtract(X, Y, Result) :- Result #= X - Y.
multiply(X, Y, Result) :- Result #= X * Y.
divide(X, Y, Result) :- Result #= X // Y.
modulo(X, Y, Result) :- Result #= X mod Y.

% Factorial Calculation
factorial(0, 1).
factorial(N, F) :-
    N #> 0,
    N1 #= N - 1,
    factorial(N1, F1),
    F #= N * F1.
