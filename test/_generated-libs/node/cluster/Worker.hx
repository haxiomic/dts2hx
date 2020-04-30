package node.cluster;
@:jsRequire("cluster", "Worker") extern class Worker extends node.events.EventEmitter {
	var id : Float;
	var process : node.child_process.ChildProcess;
	function send(message:Any, ?sendHandle:Any, ?callback:(error:ts.lib.IError) -> Void):Bool;
	function kill(?signal:String):Void;
	function destroy(?signal:String):Void;
	function disconnect():Void;
	function isConnected():Bool;
	function isDead():Bool;
	var exitedAfterDisconnect : Bool;
}