-module(my_list).
-export([take/2]).

take(0, _) -> [];
take(_, []) -> [];
take(N, [H| T]) ->
  [H | take(N-1, T)].
