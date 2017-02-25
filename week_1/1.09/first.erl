-module(first).
-export([multi/2, double/1, area/3, treble/1, square/1]).

multi(X, Y) ->
  X*Y.

double(X) ->
  multi(2, X).

area(A, B, C) ->
  S = (A + B +C) / 2,
  math:sqrt(S * (S - A) * (S - B) * (S - C)).

treble(X) ->
  multi(3, X).

square(X) ->
  multi(X, X).
