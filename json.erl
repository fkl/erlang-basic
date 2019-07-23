-module(json).
-export([jmap/0]).

jmap() ->

   Json = {obj,[{"services",
       [{obj,[{"tasks",[]},{"id",51},{"name","bdQuotaManager"}]},
	{obj,[{"tasks",[{{"id",1}, {"name", "getOwnerMessages"}}]}, {"id",104}, {"name","bdCommService"}]}
              ]}]},

   io:format("JSON IS ~p~n", [Json]),

   List = tuple_to_list(Json),

   Func = fun(Elem) ->
	if Elem == obj -> io:format("Nothing");
		true -> io:format("ELEMENT IS  ~p~n", [Elem])
	end
   end,

   lists:foreach(Func, List).
   
