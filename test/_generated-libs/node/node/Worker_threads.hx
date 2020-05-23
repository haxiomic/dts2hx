package node;

@:jsRequire("worker_threads") @valueModuleOnly extern class Worker_threads {
	static final isMainThread : Bool;
	static final parentPort : Null<node.worker_threads.MessagePort>;
	static final threadId : Float;
	static final workerData : Dynamic;
}