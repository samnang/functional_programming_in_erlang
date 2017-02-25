-module(first).
-export([multi/2, double/1, area/3]).

multi(X, Y) ->
  X*Y.

double(X) ->
  multi(2, X).

area(A, B, C) ->
  S = (A + B +C) / 2,
  math:sqrt(S * (S - A) * (S - B) * (S - C)).
