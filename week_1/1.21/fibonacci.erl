-module(fibonacci).
-export([fib/1]).

fib(N) ->
  fib(N, 0, 1).

fib(0, Acc, _) ->
  Acc;
fib(N, Pre, Acc) when N>0 ->
  fib(N-1, Acc, Pre + Acc).
