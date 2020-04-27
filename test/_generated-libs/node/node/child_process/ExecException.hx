package node.child_process;
extern interface ExecException extends js.lib.Error {
	@:optional
	var cmd : String;
	@:optional
	var killed : Bool;
	@:optional
	var code : Float;
	@:optional
	var signal : String;
}