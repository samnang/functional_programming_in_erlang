-module(my_list).
-export([double/1, even/1]).

double([]) -> [];
double([X|Xs]) ->
  [X* X | double(Xs)].

even([]) -> [];
even([X|Xs]) ->
  if
    X rem 2 =:= 0 ->
      [X|even(Xs)];
    true ->
      even(Xs)
  end.

%even([]) -> [];
%even([X|Xs]) when X rem 2 =:= 0 -> [X | even(Xs)];
%even([_X|Xs]) -> even(Xs).
