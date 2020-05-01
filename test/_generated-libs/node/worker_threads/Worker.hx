package node.worker_threads;
@:jsRequire("worker_threads", "Worker") extern class Worker extends node.events.EventEmitter {
	function new(filename:String, ?options:WorkerOptions);
	final stdin : Null<node.stream.Writable>;
	final stdout : node.stream.Readable;
	final stderr : node.stream.Readable;
	final threadId : Float;
	function postMessage(value:Any, ?transferList:std.Array<ts.AnyOf2<MessagePort, ts.lib.IArrayBuffer>>):Void;
	function ref():Void;
	function unref():Void;
	function terminate(?callback:(err:ts.lib.IError, exitCode:Float) -> Void):Void;
}