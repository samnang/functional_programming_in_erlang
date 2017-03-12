-module(rock_paper_scissors).
-export([result/2, beat/1, lose/1, tournament/2, tournament2/2]).

tournament(X, Y) -> tournament(X, Y, 0).

tournament([], [], Acc) -> tournamentResult(Acc);
tournament([X|Xs], [Y|Ys], Acc) ->
  tournament(Xs, Ys, Acc + result(X, Y)).

tournament2(X, Y) ->
  FindResult = fun({M, N}, Acc) -> Acc + result(M, N) end,
  Result = lists:foldr(FindResult, 0, lists:zip(X, Y)),
  tournamentResult(Result).

tournamentResult(0) -> 0;
tournamentResult(X) ->
  case X > 0 of
    true ->  1;
    _    -> -1
  end.

result(X, X) -> 0;
result(X, Y) ->
  case beat(X) =:= Y of
    true -> -1;
    _    ->  1
  end.

beat(rock)     -> paper;
beat(paper)    -> scissors;
beat(scissors) -> rock.

lose(rock)     -> scissors;
lose(scissors) -> paper;
lose(paper)    -> rock.
