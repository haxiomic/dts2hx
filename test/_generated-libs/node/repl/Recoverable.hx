package node.repl;
/**
	Indicates a recoverable error that a `REPLServer` can use to support multi-line input.
**/
@:jsRequire("repl", "Recoverable") extern class Recoverable extends ts.lib.ISyntaxError {
	function new(err:ts.lib.IError);
	var err : ts.lib.IError;
}