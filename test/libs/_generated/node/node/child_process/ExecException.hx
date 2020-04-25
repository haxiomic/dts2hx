package node.child_process;
extern interface ExecException extends js.lib.Error {
	@:optional
	var cmd : Null<String>;
	@:optional
	var killed : Null<Bool>;
	@:optional
	var code : Null<Float>;
	@:optional
	var signal : Null<String>;
}