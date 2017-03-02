-module(sum).
-export([sum/1]).

sum(X) -> sum(X, 0).

sum([], S) -> S;
sum([X,Xs], S) -> sum(Xs, X+S).

% Let's try it with [3,1,16]
% sum([3,1,16]).
% = sum([3,1,16], 0).
% = sum([1,16], 3+0).
% = sum([1,16], 3).
% = sum([16], 1+3).
% = sum([16], 4).
% = sum([], 16+4).
% = sum([], 20).
% = 20
