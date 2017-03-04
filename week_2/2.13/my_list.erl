-module(my_list).
-export([nub/1]).

nub(X) -> nub(X, []).

nub([], Acc) -> Acc;
nub([H|T], Acc) ->
  case exist(Acc, H) of
    true -> nub(T, Acc);
    _    -> nub(T, Acc ++ [H])
  end.

exist([], _) -> false;
exist([H|T], E) ->
  case H of
    E -> true;
    _ -> exist(T, E)
  end.
