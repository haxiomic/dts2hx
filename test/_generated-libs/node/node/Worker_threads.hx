package node;
@:jsRequire("worker_threads") extern class Worker_threads {
	static var isMainThread : Bool;
	static var parentPort : Null<node.worker_threads.MessagePort>;
	static var threadId : Float;
	static var workerData : Any;
}