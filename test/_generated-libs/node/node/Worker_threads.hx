package node;
@:jsRequire("worker_threads") @valueModuleOnly extern class Worker_threads {
	static var isMainThread : Bool;
	static var parentPort : Null<node.worker_threads.MessagePort>;
	static var threadId : Float;
	static var workerData : Dynamic;
}