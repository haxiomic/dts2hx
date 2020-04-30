package node.worker_threads;
extern typedef WorkerOptions = {
	@:optional
	var eval : Bool;
	@:optional
	var workerData : Any;
	@:optional
	var stdin : Bool;
	@:optional
	var stdout : Bool;
	@:optional
	var stderr : Bool;
	@:optional
	var execArgv : std.Array<String>;
};