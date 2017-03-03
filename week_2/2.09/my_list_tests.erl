-module(my_list_tests).
-include_lib("eunit/include/eunit.hrl").

double_test() ->
  ?assertEqual([1, 4, 9], my_list:double([1, 2, 3])),
  ?assertEqual([1, 4, 9], my_list_with_tail:double([1, 2, 3])).

even_test() ->
  ?assertEqual([2, 4], my_list:even([1, 2, 3, 4, 5])),
  ?assertEqual([2, 4], my_list_with_tail:even([1, 2, 3, 4, 5])).
