-module(eda).
-export([start/0]).

%%--------------------------------------------------------------------
%% @doc Starts this application.
%% @spec start() -> any()
%% @end
%%--------------------------------------------------------------------
start() ->
    %elibs_application:start(eda).
    application:start(eda).
