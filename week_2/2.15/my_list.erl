-module(my_list).
-export([palindrome/1]).

palindrome(X) ->
  SanitizedText = cleanUpSpecialChars(lowerCase(X)),
  SanitizedText =:= reverseString(SanitizedText).

lowerCase(X) ->
  string:to_lower(X).

cleanUpSpecialChars(X) -> cleanUpSpecialChars(X, []).
cleanUpSpecialChars([], Acc) -> reverseString(Acc);
cleanUpSpecialChars([H|T], Acc) ->
  case (H >= $A) andalso (H =< $z) of
    true -> cleanUpSpecialChars(T, [H | Acc]);
    _    -> cleanUpSpecialChars(T, Acc)
  end.

reverseString(X) -> reverseString(X, []).
reverseString([], Acc) -> Acc;
reverseString([H|T], Acc) ->
  reverseString(T, [H | Acc]).
