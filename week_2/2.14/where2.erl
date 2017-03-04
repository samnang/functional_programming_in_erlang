-module(where2).
-export([nub/1,bun/1]).

% keep first occurrences
%
% nub([2,4,1,3,3,1]) = [2,4,1,3]

% nub([2,4,1,3,3,1]) = [2, nub(removeAll(2, [4,1,3,3,1]))]
%                    = [2, nub([4 | removeAll(2, [1,3,3,1)]])]
%                    = [2, nub([4 | [1 | removeAll(2, [3,3,1])]])]
%                    = [2, nub([4 | [1 | [3 | removeAll(2, [3,1])]]])]
%                    = [2, nub([4 | [1 | [3 | [3 | removeAll(2, [1])]]]])]
%                    = [2, nub([4 | [1 | [3 | [3 | [1 | removeAll(2, [])]]]]])]
%                    = [2, nub([4 | [1 | [3 | [3 | [1 | []]]]]])]
%                    = [2, nub([4,1,3,3,1])]
%                    = [2, [4 | nub(removeAll([1,3,3,1])]]
%                    = [2, [4 | nub([1 | removeAll(4, [3,3,1])]]]
%                    = [2, [4 | nub([1 | [3 | removeAll(4, [3,1])]]]]
%                    = [2, [4 | nub([1 | [3 | [3 | removeAll(4, [1]])]]]]]
%                    = [2, [4 | nub([1 | [3 | [3 | [1 | removeAll(4, [])]]]]]]
%                    = [2, [4 | nub([1 | [3 | [3 | [1 | []]]]]]]
%                    = [2, [4 | nub([1,3,3,1])]]
%                    = [2, [4 | [1 | nub(removeAll(1, [3,3,1]))]]]
%                    = [2, [4 | [1 | nub([3 | removeAll(1, [3,1]))]]]]
%                    = [2, [4 | [1 | nub([3 | [3 | removeAll(1, [1]))]]]]]
%                    = [2, [4 | [1 | nub([3 | [3 | removeAll(1, []))]]]]]
%                    = [2, [4 | [1 | nub([3 | [3 | [])]]]]]
%                    = [2, [4 | [1 | nub([3,3])]]]
%                    = [2, [4 | [1 | [3 | nub(removeAll(3, [3]))]]]]
%                    = [2, [4 | [1 | [3 | nub(removeAll(3, []))]]]]
%                    = [2, [4 | [1 | [3 | nub([])]]]]
%                    = [2, [4 | [1 | [3 | []]]]]
%                    = [2, 4, 1, 3]

nub([]) ->
  [];
nub([X|Xs]) ->
  [X|nub(removeAll(X,Xs))].

removeAll(_,[]) ->
  [];
removeAll(X,[X|Xs]) ->
  removeAll(X,Xs);
removeAll(X,[Y|Xs]) ->
  [Y | removeAll(X,Xs) ].


% keep last occurrences
%
% bun([2,4,1,3,3,1]) = [2,4,3,1]

bun([]) ->
  [];
bun([X|Xs]) ->
  case member(X,Xs) of
    true ->
      bun(Xs);
    false ->
      [X|bun(Xs)]
  end.

member(_,[]) ->
  false;
member(X,[X|_Xs]) ->
  true;
member(X,[_Y|Xs]) ->
  member(X,Xs).
