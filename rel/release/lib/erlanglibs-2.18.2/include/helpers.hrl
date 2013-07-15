-define(APPLICATION, elibs_application:get_application(?MODULE)).
-define(OK_FUN, fun
    (ok) -> true;
    ({ok, _}) -> true;
    (_) -> false
end).
%% Helper for converting GIDs to Strings.
-define(G2S(G), case G of undefined -> undefined; _ -> elibs_types:str(G) end).
%% Helper for converting Strings to GIDs. Returns 'undefined' if the conversion was not possible.
%% Note that Piqi previously was able to do input validation on GIDs as uint64, but this is 
%% now not possible and the code executes with Guid=undefined. So your code needs to handle
%% the case where the Guid does not contain a number.
-define(S2G(S), case S of undefined -> undefined; _ -> elibs_types:int(S, undefined) end).
-define(IS_STRING(S), is_list(S) andalso is_integer(head(S))).
%% Two helpers to check if an argument is binary | string (or optionally undefined).
-define(IS_BINARY_STRING(D), (
                                  is_binary(D) orelse 
                                  is_list(D) 
                                 )).
-define(IS_OPT_BINARY_STRING(D), (
                                  is_binary(D) orelse 
                                  is_list(D) orelse 
                                  D =:= undefined
                                 )).