-module(my_list_tests).
-include_lib("eunit/include/eunit.hrl").

concat_test() ->
  ?assertEqual([], my_list:concat([])),
  ?assertEqual("hello", my_list:concat(["hello"])),
  ?assertEqual("goodbye", my_list:concat(["goo","d","","by","e"])).

join_test() ->
  ?assertEqual("hello", my_list:join("hel", "lo")),
  ?assertEqual([1,2,3,4], my_list:join([1,2], [3,4])).

member_test() ->
  ?assertEqual(true, my_list:member(2,[2,0,0,1])),
  ?assertEqual(false, my_list:member(20,[2,0,0,1])).
