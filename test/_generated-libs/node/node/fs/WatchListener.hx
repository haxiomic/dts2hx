package node.fs;

typedef WatchListener<T> = (event:WatchEventType, filename:Null<T>) -> Void;