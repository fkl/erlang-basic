-module(rf).
-export([rd/0]).

rd() ->
   %{ok, File} = file:open("map.txt",[read]),
   %Txt = file:read_file("map_plain.txt"),

   Txt = file:consult("map_eb.txt"),
   List = [Txt],
   io:fwrite("LIST FROM FILE ~p~n",List),

   %SMap = #{1=>{{"name","bdQuotaMgr"},{"taskIDs",[]}}, 2=>"second"},
   L = [{ 51, {  {"name", "bdQuotManager"},{"tasks",[ {"one",12}, {"two", 22}  ]} } }, {52, {"name", "bdMailManager"}} ],
   SMap = maps:from_list(L),


   %io:format("LOCAL LIST ~p~n", L),
   io:format("SMAP is ~p~n", [maps:find(51,SMap)]).
~                                                          
