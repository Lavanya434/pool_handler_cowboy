-module(pool_handler_cowboy_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
Dispatch = cowboy_router:compile([
		{'_', [
			{"/", my_handler, []}
		]}
	]),
	{ok, _} = cowboy:start_http(http, 100, [{port, 8080}], #{
		env => #{dispatch => Dispatch}
}),	
pool_handler_cowboy_sup:start_link().

stop(_State) ->
	ok.
