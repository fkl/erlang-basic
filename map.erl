-module(map).
-export([mapf1/0]).

mapf1() ->
 io:format("hellow ~n"),

 % A = [1,2,3],
 % f = proplists:get_value(2, A),
 % io:format("f is ~p~n", [f]).

 M1 = #{name=>john,age=>25},
 io:format("~w~n", [map_size(M1)]),
 io:format("~w~n", [M1]),
 io:format("~w~n", [maps:find(name,M1)]),
 io:format("~w~n", [maps:find(age,M1)]).
 %io:format("~w~n", [maps:find(john,M1)]),
 %io:format("~w~n", [maps:find("john",M1)]).
