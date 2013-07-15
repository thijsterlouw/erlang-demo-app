-define(FUNCTION, '__function_macro__').
-define(ARITY, '__function_arity__').

-ifdef(NO_PARSE_TRANSFORM).
-else.
-compile({parse_transform, elibs_transform}).
-endif.