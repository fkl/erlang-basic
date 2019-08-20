-module(json).
-export([jmap/0]).

% includes
%-include("ej.hrl").

% -record(taskrec,
%         {
%             id  :: integer(),
%             name :: string()}).

% -record(services,
%         {tasks            :: [taskrec],
%          id                 :: integer(),
%          name               :: string()}).

% get_keylist_val(Key, KeyList) ->
%     {Key, Val} = lists:keyfind(Key, 1, KeyList),
%     Val.

jmap() ->

    Json = {obj,[{"services",
        [{obj,[{"tasks",[]},{"id",51},{"name","bdQuotaManager"}]},
	
    {obj,[{"tasks",[{{"id",1}, {"name", "getOwnerMessages"}}]}, {"id",104}, {"name","bdCommService"}]}
               ]}]},


   %  FileName = "/Users/fkhan/bd_erl/lib/lsg/priv" ++ "/lsg_service_taskid_mapping/service_taskid_map_basic.json",

   %  {ok, Json} = file:read_file(FileName),

   {obj, [{"services", S}]} = Json,


   io:format("JSON read from file IS ~p~n", [ S]),

   %  MochiData = mochijson2:decode(Json),

   %  io:format("Mochi decoded data is ~p~n", [ MochiData ]),

   %  Services = ej:get({"services", "tasks"}, MochiData),

   %  io:format("Using Ej, read data is ~p~n", [ Services ]),

      %case ejson:decode(Json) of
      %  {ok, JsonMap, []}  -> JsonMap,
      %   FooValue = proplists:get_value(<<services>>, Json),
      %   io:format("Services are ~p~n", [FooValue]),
        
      %  {ok, _, _} ->
      %     {error, bad_format}
      %end.
   ok.
   %Servs = proplists:get_value(<<"tasks">>, Json),

   %io:format("Services are ~p~n", [Servs]),
  % case get_keylist_val("tasks", Json) of
  %    {ok, Serv} -> io:format("tasks is ~p~n", Serv)
  % case get_keylist_val("services", Json) of
  %    <<"tasks">> ->
  %       Result = {ok, #services{
  %          tasks =  [get_keylist_val("tasks", Json)],
  %%          id =  get_keylist_val("id", Json),
  %          name = get_keylist_val("name", Json)}},
  %          io:format("Result is ~p~n", Result);
  %    _ -> {error, bad_format}
  %end,


   %List = tuple_to_list(Json),

   %Func = fun(Elem) ->
	%   if Elem =/= obj -> io:format("ELEMENT IS  ~p~n", [Elem]);
%		   true -> io:format("~n") 
%	   end
%   end,
   
   %{"services", [ServiceList] } = List,
 %  lists:foreach(Func, List).
   
   %SMap = maps:from_list(List),
   %io:format("after conversion ~p~n", List[0]).
