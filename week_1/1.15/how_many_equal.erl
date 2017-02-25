-module(how_many_equal).
-export([howManyEqual/3]).

howManyEqual(X, X, X) ->
  3;
howManyEqual(X, X, _) ->
  2;
howManyEqual(X, _, X) ->
  2;
howManyEqual(_, X, X) ->
  2;
howManyEqual(_, _, _) ->
  0.
