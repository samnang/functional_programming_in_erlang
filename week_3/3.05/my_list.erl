-module(my_list).
-export([doubleAll/1, evens/1, product/1, zip/2, zip_tail/2, zip_with/3, zip_with_tail/3]).

doubleAll(X) ->
  lists:map(fun(Y) -> Y * 2 end, X).

evens(X) ->
  lists:filter(fun(Y) -> Y rem 2 =:= 0 end, X).

product(X) ->
  lists:foldr(fun(Y, Acc) -> Y * Acc end, 1, X).

zip([], _N) -> [];
zip(_M, []) -> [];
zip([H|T], [X|Xs]) ->
  [{H, X} | zip(T, Xs)].

zip_tail(M, N) -> zip_tail(M, N, []).

zip_tail(_M, [], Acc) -> lists:reverse(Acc);
zip_tail([], _N, Acc) -> lists:reverse(Acc);
zip_tail([H|T], [X|Xs], Acc) ->
  zip_tail(T, Xs, [{H, X} | Acc]).

zip_with(_Fun, [], _N) -> [];
zip_with(_Fun, _M, []) -> [];
zip_with(Fun, [H|T], [X|Xs]) ->
  [Fun(H, X) | zip_with(Fun, T, Xs)].

zip_with_tail(Fun, M, N) -> zip_with_tail(Fun, M, N, []).

zip_with_tail(_Fun, [], _N, Acc) -> lists:reverse(Acc);
zip_with_tail(_Fun, _M, [], Acc) -> lists:reverse(Acc);
zip_with_tail(Fun, [H|T], [X|Xs], Acc) ->
  zip_with_tail(Fun, T, Xs, [Fun(H, X) | Acc]).
