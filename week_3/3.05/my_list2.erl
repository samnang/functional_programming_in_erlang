-module(my_list2).
-export([zip/2, zip_with/3]).

zip(M, N) ->
  zip_with(fun(X, Y) -> {X, Y} end, M, N).

zip_with(Fun, M, N) ->
  lists:map(Fun, zip(M, N)).
