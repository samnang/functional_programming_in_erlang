## Building and matching lists

```erlang
Erlang/OTP 19 [erts-8.2] [source] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Eshell V8.2  (abort with ^G)
1> A = [1,2,4,1,3].
[1,2,4,1,3]
2> [2,3|A].
[2,3,1,2,4,1,3]
3> [97,104,97,33].
"aha!"
4> [2|[1,3|[4|[]]]].
[2,1,3,4]
5> [B|Bs] = [2,3|A].
[2,3,1,2,4,1,3]
6> B.
2
7> Bs.
[3,1,2,4,1,3]
8> A = tl(Bs).
[1,2,4,1,3]
9> [C,C|_] = [2,2,3,3,4].
[2,2,3,3,4]
10> C.
2
```

## Introducing case expressions

```erlang
Erlang/OTP 19 [erts-8.2] [source] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Eshell V8.2  (abort with ^G)
1> case [2,3,4] of
1>   [X,Y|_] -> X+Y;
1>   [S] -> S;
1>   _ -> 0
1> end.
5
2> case [6] of
2>   [X,Y|_] -> X+Y;
2>   [S] -> S;
2>   _ -> 0
2> end.
6
3> case [] of
3>   [X,Y|_] -> X+Y;
3>   [S] -> S;
3>   _ -> 0
3> end.
0
```
