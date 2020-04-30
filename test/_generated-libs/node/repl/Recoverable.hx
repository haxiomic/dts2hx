package node.repl;
/**
	Indicates a recoverable error that a `REPLServer` can use to support multi-line input.
**/
@:jsRequire("repl", "Recoverable") extern class Recoverable {
	function new(err:ts.lib.IError);
	var err : ts.lib.IError;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
}