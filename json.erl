-module(json).
-export([jmap/0]).

-record(taskrec,
        {
            id  :: integer(),
            name :: string()}).

-record(services,
        {tasks            :: [taskrec],
         id                 :: integer(),
         name               :: string()}).

get_keylist_val(Key, KeyList) ->
    {Key, Val} = lists:keyfind(Key, 1, KeyList),
    Val.

jmap() ->

   Json = {obj,[{"services",
       [{obj,[{"tasks",[]},{"id",51},{"name","bdQuotaManager"}]},
	{obj,[{"tasks",[{{"id",1}, {"name", "getOwnerMessages"}}]}, {"id",104}, {"name","bdCommService"}]}
              ]}]},

   case get_keylist_val("services", Json) of
      <<"tasks">> ->
         Result = {ok, #services{
            tasks =  [get_keylist_val("tasks", Json)],
            id =  get_keylist_val("id", Json),
            name = get_keylist_val("name", Json)}},
            io:format("Result is ~p~n", Result);
      _ -> {error, bad_format}
   end,

   io:format("JSON IS ~p~n", [ Json ]).

   %List = tuple_to_list(Json),

   %Func = fun(Elem) ->
	%if Elem =/= obj -> io:format("ELEMENT IS  ~p~n", [Elem]);
	%	true -> io:format("~n") 
	%end
   %end,
   
   %{services, [ServiceList] } = List,
   %lists:foreach(Func, List).
   
   %SMap = maps:from_list(List),
   %io:format("after conversion ~p~n", List[0]).
