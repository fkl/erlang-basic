-module(fact).
-export([f/1]).

f(0) -> 1;
f(N) when N>0 -> N*f(N-1).



