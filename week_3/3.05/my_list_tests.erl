-module(my_list_tests).
-include_lib("eunit/include/eunit.hrl").

doubleAll_test() ->
  ?assertEqual([], my_list:doubleAll([])),
  ?assertEqual([2, 4, 6], my_list:doubleAll([1, 2, 3])).

evens_test() ->
  ?assertEqual([], my_list:evens([])),
  ?assertEqual([2, 4], my_list:evens([1, 2, 3, 4, 5])).

product_test() ->
  ?assertEqual(1, my_list:product([])),
  ?assertEqual(24, my_list:product([1, 2, 3, 4])).

zip_test() ->
  ?assertEqual([{1, 2}, {3, 4}], my_list:zip([1, 3], [2, 4, 6, 7])),
  ?assertEqual([{1, 2}, {3, 4}], my_list:zip([1, 3, 5, 7], [2, 4])).

zip_tail_test() ->
  ?assertEqual([{1, 2}, {3, 4}], my_list:zip_tail([1, 3], [2, 4, 6, 7])),
  ?assertEqual([{1, 2}, {3, 4}], my_list:zip_tail([1, 3, 5, 7], [2, 4])).

zip_with_test() ->
  ?assertEqual([3, 7], my_list:zip_with(fun(X,Y) -> X+Y end, [1, 3], [2, 4, 6, 7])),
  ?assertEqual([2, 12], my_list:zip_with(fun(X,Y) -> X*Y end, [1, 3, 5, 7], [2, 4])).

zip_with_tail_test() ->
  ?assertEqual([3, 7], my_list:zip_with_tail(fun(X,Y) -> X+Y end, [1, 3], [2, 4, 6, 7])),
  ?assertEqual([2, 12], my_list:zip_with_tail(fun(X,Y) -> X*Y end, [1, 3, 5, 7], [2, 4])).
