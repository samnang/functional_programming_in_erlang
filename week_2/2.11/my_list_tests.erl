-module(my_list_tests).
-include_lib("eunit/include/eunit.hrl").

take_test() ->
  ?assertEqual([], my_list:take(0, "hello")),
  ?assertEqual([], my_list:take(3, "")),
  ?assertEqual("hell", my_list:take(4, "hello")),
  ?assertEqual("hello", my_list:take(9, "hello")).

take_with_tail_test() ->
  ?assertEqual([], my_list_with_tail:take(0, "hello")),
  ?assertEqual([], my_list_with_tail:take(3, "")),
  ?assertEqual("hell", my_list_with_tail:take(4, "hello")),
  ?assertEqual("hello", my_list_with_tail:take(9, "hello")).
