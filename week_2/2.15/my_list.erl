-module(my_list).
-export([palindrome/1]).

palindrome(X) ->
  SanitizedText = sanitizeText(X),
  SanitizedText =:= reverseString(SanitizedText).

sanitizeText(X) -> sanitizeText(X, []).
sanitizeText([], Acc) -> Acc;
sanitizeText([H|T], Acc) ->
  case (H >= 65) andalso (H =< 122) of
    true  -> sanitizeText(T, Acc ++ [string:to_lower(H)]);
    _ -> sanitizeText(T, Acc)
  end.

reverseString(X) -> reverseString(X, []).
reverseString([], Acc) -> Acc;
reverseString([H|T], Acc) ->
  reverseString(T, [H | Acc]).
