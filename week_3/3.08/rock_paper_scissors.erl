-module(rock_paper_scissors).
-export([result/2, beat/1, lose/1, tournament/2, tournament2/2, tournamentWinner/2]).

tournament(X, Y) -> tournament(X, Y, 0).

tournament([], [], Acc) -> Acc;
tournament([X|Xs], [Y|Ys], Acc) ->
  tournament(Xs, Ys, Acc + result(X, Y)).

tournament2(X, Y) ->
  FindResult = fun({M, N}, Acc) -> Acc + result(M, N) end,
  lists:foldr(FindResult, 0, lists:zip(X, Y)).

tournamentWinner(X, Y) ->
  tournamentResult(tournament(X, Y)).

tournamentResult(0) -> draw;
tournamentResult(X) ->
  case X > 0 of
    true -> left;
    _    -> right
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
