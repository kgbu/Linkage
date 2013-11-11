
%% @doc 
%% @end

-module(looper).

%% ====================================================================
%% API functions
%% ====================================================================
-export([run/0]).

run() ->
	PidLists = spawn_procs([] | 1000).

%% spawn whole neurons
spawn_procs(L, 0) ->
	L;
spawn_procs(L, N) when_is_list(L), when_is_number(N) ->
	Pid = spawn(fun newron/1 [N]),
	spawn_procs([Pid|L], N - 1).


%% ====================================================================
%% Internal functions
%% ====================================================================
newron(N) ->
	{Neighbour, Flags} = State,
	receive
		{neighbor, ID} ->
			ID ! Neighbour,
			newron(State)
			;
		{add, Path} ->
			{Neighbour, Flags} = State
			newron([Path| Neighbour],Flags)
			;
		{remove, ID} ->
			newron(lists:delete(ID, Neighbor), Flags)
	end.

