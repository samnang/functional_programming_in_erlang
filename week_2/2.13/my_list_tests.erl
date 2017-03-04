-module(my_list_tests).
-include_lib("eunit/include/eunit.hrl").

take_test() ->
  ?assertEqual([], my_list:nub([])),
  ?assertEqual([1], my_list:nub([1])),
  ?assertEqual([2,4,1,3], my_list:nub([2,4,1,3,3,1])).
