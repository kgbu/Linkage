

-module(synapsepool).

%% ====================================================================
%% API functions
%% ====================================================================
-export([run/1]).


run(Type) ->
	Pool = setuppool([], 10000),
	{ok, Pool}.

%% ====================================================================
%% Internal functions
%% ====================================================================

setuppool(L, 0)->
		L.
setuppool(L, N) when_is_list(L), when_is_number(N) ->
		spawn(fun syapse/1 [[],init])
		.

synapse(State) ->
    {Neighbor, Flags} = State,
	receive
		{neighbor, ID} ->
			ID ! {self(),Neighbor},
			synapse(State)
			;
		{add, Path} ->
			synapse([Path | Neighbor],Flags)
			;
		{remove, ID} -> 
			synapse(lists:delete(ID, Neighbor), Flags)
			;
	after 10000 ->
		%% after 10000 msec, decrese list of neighbors
		synapse(shurink(Neighbors), Flags)
	end.

shurink([]) -> 
	[];
shurink([H|L]) ->
	L.