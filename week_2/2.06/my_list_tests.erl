-module(my_list_tests).
-include_lib("eunit/include/eunit.hrl").

product_with_empty_args_test() ->
  ?assertEqual(1, my_list:product([])),
  ?assertEqual(1, my_list_with_tail:product([])).

product_with_args_test() ->
  ?assertEqual(24, my_list:product([1,2,3,4])),
  ?assertEqual(24, my_list_with_tail:product([1,2,3,4])).

maximum_with_one_arg_test() ->
  ?assertEqual(1, my_list:maximum([1])),
  ?assertEqual(1, my_list_with_tail:maximum([1])).

maximum_with_more_than_one_arg_test() ->
  ?assertEqual(3, my_list:maximum([1, 3, 2])),
  ?assertEqual(3, my_list_with_tail:maximum([1, 3, 2])).
