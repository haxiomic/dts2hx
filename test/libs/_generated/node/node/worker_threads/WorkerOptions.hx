package node.worker_threads;
extern interface WorkerOptions {
	@:optional
	var eval : Null<Bool>;
	@:optional
	var workerData : Any;
	@:optional
	var stdin : Null<Bool>;
	@:optional
	var stdout : Null<Bool>;
	@:optional
	var stderr : Null<Bool>;
	@:optional
	var execArgv : Null<std.Array<String>>;
}