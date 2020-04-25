package node.fs;
/**
	Asynchronous chown(2) - Change ownership of a file.
**/
@:jsRequire("fs", "chown") extern class Chown {
	/**
		Asynchronous chown(2) - Change ownership of a file.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, uid:Float, gid:Float):js.lib.Promise<Void>;
}