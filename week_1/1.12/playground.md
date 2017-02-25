# Erlang data in practice

```erlang
Erlang/OTP 19 [erts-8.2] [source] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Eshell V8.2  (abort with ^G)
1>  not true.
false
2>  true and false.
false
3>  length([2,3,4,5]).
4
4>  [2,3]++[[4]].
[2,3,[4]]
5>  (fun (X) -> X+2 end)(40).
42
6>  fun (X) -> X+2 end(40).
42
7>  2#100.
4
8>  100#2.
* 1: illegal base '100'
8>  34#2.
2
9>  2#34.
* 1: illegal integer
9> [97,98,99].
"abc"
10> [$h,$e,$l,$l,o].
[104,101,108,108,o]
11> [34,3,5,36,37].
[34,3,5,36,37]
12> [34,35,36,37].
"\"#$%"
13> false and (3 == (4 div 0)).
** exception error: an error occurred when evaluating an arithmetic expression
     in operator  div/2
        called as 4 div 0
14> false andalso (3 == (4 div 0)).
false
15> true orelse (3 == (4 div 0)).
true
```
