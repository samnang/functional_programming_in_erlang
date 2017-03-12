-module(my_list2_tests).
-include_lib("eunit/include/eunit.hrl").

zip_test() ->
  ?assertEqual([{1, 2}, {3, 4}], my_list:zip([1, 3], [2, 4, 6, 7])),
  ?assertEqual([{1, 2}, {3, 4}], my_list:zip([1, 3, 5, 7], [2, 4])).

zip_with_test() ->
  ?assertEqual([3, 7], my_list:zip_with(fun(X,Y) -> X+Y end, [1, 3], [2, 4, 6, 7])),
  ?assertEqual([2, 12], my_list:zip_with(fun(X,Y) -> X*Y end, [1, 3, 5, 7], [2, 4])).
