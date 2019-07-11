-module(rf).
-export([rd/2]).

rd(ServiceID, TaskID) ->
   {ok, Txt} = file:consult("map_eb.txt"),
   List = Txt,
   %io:fwrite("LIST FROM FILE ~p~n",[List]),

   SMap = maps:from_list(List),

   io:fwrite("Map read is ~p~n", [SMap]),

   F1 = maps:find(ServiceID, SMap),

   {ok, F2} = F1,
   {ServiceName, {_, TaskIDList}} = F2,

   io:fwrite("ServiceName from id ~w is  ~s~n", [ServiceID, ServiceName]),

   TaskName = [TEntry || {TID, TEntry} <- TaskIDList, TID =:= TaskID],
   io:fwrite("task name for id ~w is ~s~n", [TaskID, TaskName]).
   %io:fwrite("PRINTING f2 ~p~n", [F2]).
