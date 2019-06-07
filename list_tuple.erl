-module(list_tuple).
-export([lt/0]).

lt() ->

	%Services = [{1, srv1}, {2, srv2}],
	%Filtered = [X || {1,X} <- Services],
	%io:format("~w~n", Filtered),

        S2 = [{2, {"Sname", [{12, "Tname"}]}}],

	F2 = [ Y || {2,Y} <- S2],




	%Z = list_to_atom(F2),
	%Keys = proplists:get_keys(F2),
	
	
	[{Z, [{_,_}]}] = F2,

	io:format("THIS IS UPDATED ~s~n",[Z]).
	



	%{S_name, [N, O]} = F2,
	 %{}  <-F2
        %io:format("~w~n", S_name).
➜  ~ 
