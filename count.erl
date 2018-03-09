-module(count).
-export([len/1]).

len([]) -> 0;
len([_|L]) -> 1+len(L).
%% len(N) when N > 0 -> 1+len(N-1).


