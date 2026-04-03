package node.fs.promises;

typedef FileChangeInfo<T> = {
	var eventType : node.fs.WatchEventType;
	var filename : Null<T>;
};