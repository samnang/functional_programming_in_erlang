-module(rock_paper_scissors_tests).
-include_lib("eunit/include/eunit.hrl").

result_test() ->
  ?assertEqual(0, rock_paper_scissors:result(rock, rock)),
  ?assertEqual(1, rock_paper_scissors:result(rock, scissors)),
  ?assertEqual(1, rock_paper_scissors:result(scissors, paper)),
  ?assertEqual(-1, rock_paper_scissors:result(paper, scissors)),
  ?assertEqual(-1, rock_paper_scissors:result(scissors, rock)).

beat_test() ->
  ?assertEqual(paper, rock_paper_scissors:beat(rock)),
  ?assertEqual(scissors, rock_paper_scissors:beat(paper)),
  ?assertEqual(rock, rock_paper_scissors:beat(scissors)).

lose_test() ->
  ?assertEqual(scissors, rock_paper_scissors:lose(rock)),
  ?assertEqual(paper, rock_paper_scissors:lose(scissors)),
  ?assertEqual(rock, rock_paper_scissors:lose(paper)).

tournament_test() ->
  ?assertEqual(-1, rock_paper_scissors:tournament([rock,rock,paper,paper],[rock,paper,scissors,rock])),
  ?assertEqual(0, rock_paper_scissors:tournament([rock,rock,paper],[paper,scissors,paper])),
  ?assertEqual(1, rock_paper_scissors:tournament([rock,paper,scissors,rock],[rock,rock,paper,paper])).

tournament2_test() ->
  ?assertEqual(-1, rock_paper_scissors:tournament2([rock,rock,paper,paper],[rock,paper,scissors,rock])),
  ?assertEqual(0, rock_paper_scissors:tournament2([rock,rock,paper],[paper,scissors,paper])),
  ?assertEqual(1, rock_paper_scissors:tournament2([rock,paper,scissors,rock],[rock,rock,paper,paper])).
