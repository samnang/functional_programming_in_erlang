-module(my_list_with_tail).
-export([take/2]).

take(N, X) -> take(N, X, []).

take(0, _, Acc) -> Acc;
take(_, [], Acc) -> Acc;
take(N, [H| T], Acc) ->
  take(N-1, T, Acc ++ [H]).
