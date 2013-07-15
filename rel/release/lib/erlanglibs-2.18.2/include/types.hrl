%Erlang defaults: 
%unsigned-big-integer, so that will be used unless otherwise specified

%64 bit
-define(UINT64, 64).

%32 bit
-define(DWORD, 32).
-define(LONG, 32).
-define(UINT32, 32).					
-define(INT32, 32/signed).
-define(UINT32_LITTLE, 32/unsigned-little-integer).

%16 bit
-define(SHORT, 16).
-define(UINT16, 16).
-define(WORD, 16).
-define(SHORT_LITTLE, 16/unsigned-little-integer).

%8 bit
-define(CHAR, 8).
-define(BYTE, 8).
