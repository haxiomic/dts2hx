package global.jquery;

typedef DeferredStatic = {
	/**
		A factory function that returns a chainable utility object with methods to register multiple callbacks into callback queues, invoke callback queues, and relay the success or failure state of any synchronous or asynchronous function.
	**/
	@:selfCall
	function call<TR, TJ, TN>(?beforeStart:(deferred:Deferred<TR, TJ, TN>) -> Void):Deferred<TR, TJ, TN>;
	var exceptionHook : Dynamic;
};