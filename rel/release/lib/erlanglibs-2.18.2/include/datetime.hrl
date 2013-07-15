
-record(date, {
    year, % integer(),
    month, % integer(),
    day % integer()
}).
-record(time, {
    hours, % integer(),
    minutes, % integer(),
    seconds % integer()
}).

-record(datetime, {
    date, % date(),
    time % time()
}).

