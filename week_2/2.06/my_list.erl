-module(my_list).
-export([product/1, maximum/1]).

product([]) -> 1;
product([X|Y]) -> X * product(Y).

maximum([]) -> erlang:error(badarg);
maximum([X]) -> X;
maximum([X | Y]) -> max(X, maximum(Y)).
