-module(my_handler).
-behaviour(cowboy_loop_handler).

-export([init/3]).
-export([info/3]).
-export([terminate/3]).

-record(state, {
}).

init(_, Req, _Opts) ->
	{loop, Req, #state{}, 5000, hibernate}.
info({reply, Body}, Req, State) ->
io:format("hi"),
    {ok, Req2} = cowboy_req:reply(200, [], Body, Req),
    {ok, Req2, State};
info(_Msg, Req, State) ->
    {loop, Req, State, hibernate}.


terminate(_Reason, _Req, _State) ->
	ok.
