package node.repl;
/**
	Indicates a recoverable error that a `REPLServer` can use to support multi-line input.
**/
@:jsRequire("repl", "Recoverable") extern class Recoverable extends ts.lib.SyntaxError {
	function new(err:ts.lib.Error);
	var err : ts.lib.Error;
}