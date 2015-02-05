%% @private
-module(zipcode_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

%% API.
start(_Type, _Args) ->

	Dispatch = cowboy_router:compile([
		{'_', [
                {"/", cowboy_static, {file, "/home/ec2-user/Projects/zipcode/priv/static/index.html"}},
			    {"/process", search_zipcode_handler, []}
		]}
	]),
	{ok, _} = cowboy:start_http(http, 100, [{port, 8080}], [
		{env, [{dispatch, Dispatch}]}
	]),
	zipcode_sup:start_link().

stop(_State) ->
	ok.
