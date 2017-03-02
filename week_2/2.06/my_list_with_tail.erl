-module(my_list_with_tail).
-export([product/1, maximum/1]).

product(X) -> product(X, 1).

product([], S) -> S;
product([X|Y], S) -> product(Y, X*S).

maximum([]) -> erlang:error(badarg);
maximum([X|Y]) -> maximum(Y, X).

maximum([], Acc) -> Acc;
maximum([X|Y], Acc) -> maximum(Y, max(X, Acc)).
