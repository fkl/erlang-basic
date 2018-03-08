-module(first).
-export([sum/2, hi/0]).

sum(First, Sec) ->
	First+Sec.

%% Just a print
%% lib name is io:format/1
hi() ->
	io:format("~p~n", [<<"Hello fayyaz in MODIFLED">>]).
