package node.worker_threads;
@:jsRequire("worker_threads", "MessagePort") extern class MessagePort extends node.events.EventEmitter {
	function close():Void;
	function postMessage(value:Any, ?transferList:std.Array<haxe.extern.EitherType<MessagePort, ts.lib.IArrayBuffer>>):Void;
	function ref():Void;
	function unref():Void;
	function start():Void;
}