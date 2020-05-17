package node.repl;

/**
	Indicates a recoverable error that a `REPLServer` can use to support multi-line input.
**/
@:jsRequire("repl", "Recoverable") extern class Recoverable extends js.lib.Error.SyntaxError {
	function new(err:ts.lib.Error);
	var err : ts.lib.Error;
}