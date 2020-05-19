package vue;

typedef WatchHandler<T> = (val:T, oldVal:T) -> Void;