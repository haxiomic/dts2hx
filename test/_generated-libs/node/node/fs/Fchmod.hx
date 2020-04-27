package node.fs;
/**
	Asynchronous fchmod(2) - Change permissions of a file.
**/
@:jsRequire("fs", "fchmod") @valueModuleOnly extern class Fchmod {
	/**
		Asynchronous fchmod(2) - Change permissions of a file.
	**/
	static function __promisify__(fd:Float, mode:haxe.extern.EitherType<String, Float>):js.lib.Promise<Void>;
}