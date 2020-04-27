package node.fs;
/**
	Asynchronous fchown(2) - Change ownership of a file.
**/
@:jsRequire("fs", "fchown") @valueModuleOnly extern class Fchown {
	/**
		Asynchronous fchown(2) - Change ownership of a file.
	**/
	static function __promisify__(fd:Float, uid:Float, gid:Float):js.lib.Promise<Void>;
}