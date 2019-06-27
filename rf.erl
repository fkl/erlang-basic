-module(rf).
-export([rd/0]).

rd() ->
   %{ok, File} = file:open("map.txt",[read]),
   %Txt = file:read_file("map_plain.txt"),

   Txt = file:consult("map_eb.txt"),
   io:fwrite("~p~n",[Txt]),

   SMap = #{1=>{{"name","bdQuotaMgr"},{"taskIDs",[]}}, 2=>"second"},
   io:format("~p~n", [maps:find(1,SMap)]).
