-module(rf).
-export([rd/0]).

rd() ->
   {ok, Txt} = file:consult("map_eb.txt"),
   List = Txt,
   %io:fwrite("LIST FROM FILE ~p~n",[List]),

   SMap = maps:from_list(List),

   F1 = maps:find(51, SMap),

   {ok, F2} = F1,
   {ServiceName, {Tasks, TaskIDList}} = F2,

   io:fwrite("ServiceName ~s~n", [ServiceName]),

   TaskID = 11,

   TaskName = [TEntry || {TID, TEntry} <- TaskIDList, TID =:= TaskID],
   io:fwrite("task name for id ~w is ~s~n", [TaskID, TaskName]),
   io:fwrite("PRINTING f2 ~p~n", [F2]).
