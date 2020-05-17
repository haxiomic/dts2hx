package node;

@:jsRequire("tty") @valueModuleOnly extern class Tty {
	static function isatty(fd:Float):Bool;
}