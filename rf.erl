-module(rf). 
-export([rd/0]). 

rd() -> 
   {ok, Txt} = file:consult("map_eb.txt"),
   List = Txt,
   %io:fwrite("LIST FROM FILE ~p~n",[List]),

   SMap = maps:from_list(List),

   F1 = maps:find(51, SMap),


  
   {ok, F2} = F1, 
   %io:fwrite(f1),
   io:fwrite("PRINTING f2 ~p~n", [F2]),
   io:format("SMAP index 51 is  ~p~n", [maps:find(51, SMap)]),
   io:format("SMAP idex 52 is  ~p~n", [maps:find(52, SMap)]).
➜  ~ 
