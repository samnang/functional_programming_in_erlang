-module(my_list).
-export([concat/1, join/2, member/2]).

concat([]) -> [];
concat([X]) -> X;
concat([H|T]) ->
  join(H, concat(T)).

join(X, []) -> X;
join([], X) -> X;
join([H|T], X) ->
  [H | join(T, X)].

member(_, []) -> false;
member(N, [N|_]) -> true;
member(N, [_|T]) -> member(N, T).
