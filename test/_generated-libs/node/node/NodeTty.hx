package node;

@:jsRequire("node:tty") @valueModuleOnly extern class NodeTty {
	/**
		The `tty.isatty()` method returns `true` if the given `fd` is associated with
		a TTY and `false` if it is not, including whenever `fd` is not a non-negative
		integer.
	**/
	static function isatty(fd:Float):Bool;
}