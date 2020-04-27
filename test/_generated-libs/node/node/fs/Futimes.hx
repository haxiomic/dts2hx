package node.fs;
/**
	Asynchronously change file timestamps of the file referenced by the supplied file descriptor.
**/
@:jsRequire("fs", "futimes") extern class Futimes {
	/**
		Asynchronously change file timestamps of the file referenced by the supplied file descriptor.
	**/
	static function __promisify__(fd:Float, atime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>, mtime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>):js.lib.Promise<Void>;
}