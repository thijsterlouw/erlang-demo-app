-compile([{parse_transform, lager_transform}]).

%% Syslog levels:
%% Debug
-define(DEBUG(Msg, Args), _ = lager:debug(Msg, Args)).
%% Informational: normal operational logs, used for reporting, B.I. etc
-define(INFO(Msg, Args), _ = lager:info(Msg, Args)).
%% Normal, but significant: unusual but not an error. Spot potential problems.
-define(NOTICE(Msg, Args), _ = lager:notice(Msg, Args)).
%% Warning conditions : potentially cause problems, but has automatic recovery
%% (for example default value used instead of config).
-define(WARNING(Msg, Args), _ = lager:warning(Msg, Args)).
%% Error conditions : operation fails, but app/service doesn't fail.
-define(ERROR(Msg, Args), _ = lager:error(Msg, Args)).
%% Critical conditions : action must be taken soon (not immediately).
-define(CRITICAL(Msg, Args), _ = lager:critical(Msg, Args)).
%% Alerts: action must be taken immediately.
-define(ALERT(Msg, Args), _ = lager:alert(Msg, Args)).
%% Affects multiple apps/servers/sites, system is unusable
-define(EMERGENCY(Msg, Args), _ = lager:emergency(Msg, Args)).


%% Use with care, you should probably be using the dedicated monitoring system instead of these:
-define(STATS(Msg, Args), _ = lager:info("STATS: " ++ Msg, Args)). % statistics
-define(MONITOR(Msg), _ = lager:info("MONITOR: " ++ Msg)). % monitor

-define(ssp_debug(Msg, Args),
    io:format( "~25p ~15p " ?MODULE_STRING ":~p   " Msg "~n" , [
        nifutils:nif_now(), self(), ?LINE | Args] ) ).

