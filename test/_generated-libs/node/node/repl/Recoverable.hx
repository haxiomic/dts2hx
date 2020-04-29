package node.repl;
/**
	Indicates a recoverable error that a `REPLServer` can use to support multi-line input.
**/
@:jsRequire("repl", "Recoverable") extern class Recoverable {
	function new(err:js.lib.IError);
	var err : js.lib.IError;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
}