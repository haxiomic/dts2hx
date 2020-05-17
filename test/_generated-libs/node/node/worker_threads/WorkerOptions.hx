package node.worker_threads;

typedef WorkerOptions = {
	@:optional
	var eval : Bool;
	@:optional
	var workerData : Dynamic;
	@:optional
	var stdin : Bool;
	@:optional
	var stdout : Bool;
	@:optional
	var stderr : Bool;
	@:optional
	var execArgv : Array<String>;
};