package node.fs;
/**
	Asynchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
**/
@:jsRequire("fs", "lchown") @valueModuleOnly extern class Lchown {
	/**
		Asynchronous lchown(2) - Change ownership of a file. Does not dereference symbolic links.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, uid:Float, gid:Float):js.lib.Promise<Void>;
}