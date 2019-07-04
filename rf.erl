-module(rf).
-export([rd/0]).

rd() ->
   {ok, Txt} = file:consult("map_eb.txt"),
   List = Txt,
   io:fwrite("LIST FROM FILE ~p~n",[List]),

   SMap = maps:from_list(List),

   io:format("SMAP is ~p~n", [maps:find(51,SMap)]).
