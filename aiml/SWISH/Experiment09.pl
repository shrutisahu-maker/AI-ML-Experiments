%f(X)=−X2+6X

value(1,5).
value(2,8).
value(3,9).
value(4,8).

hill(X,Best) :-
    step(X,5,Best).

step(X,0,X).

step(X,T,Best) :-
    Y is X+1,
    value(X,V1),
    value(Y,V2),
    ( V2 > V1 ->
        Next = Y
    ;
        Next = X
    ),
    T1 is T-1,
    step(Next,T1,Best).