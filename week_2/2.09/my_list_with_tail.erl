-module(my_list_with_tail).
-export([double/1, even/1]).

double(X) -> double(X, []).

double([], Acc) -> Acc;
double([X | Xs], Acc) ->
  double(Xs, Acc ++ [X * X]).

even(X) -> even(X, []).

even([], Acc) -> Acc;
even([X|Xs], Acc) ->
  if
    X rem 2 =:= 0 ->
      even(Xs, Acc ++ [X]);
    true ->
      even(Xs, Acc)
  end.
