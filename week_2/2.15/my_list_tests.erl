-module(my_list_tests).
-include_lib("eunit/include/eunit.hrl").

palindrome_test() ->
  ?assertEqual(true, my_list:palindrome("Madam I\'m Adam")),
  ?assertEqual(false, my_list:palindrome("hello")).
