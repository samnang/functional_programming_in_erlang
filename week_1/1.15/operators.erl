-module(operators).
-export([notEqual/2, equal/2, xNot/1, xAnd/2, xOr/2]).

notEqual(X, X) ->
  false;
notEqual(_, _) ->
  true.

equal(X, X) ->
  true;
equal(_, _) ->
  false.

xNot(true) ->
  false;
xNot(false) ->
  true.

xAnd(true, true) ->
  true;
xAnd(X, X) ->
  false.

xOr(true, _) ->
  true;
xOr(_, true) ->
  true;
xOr(false, false) ->
  false.
