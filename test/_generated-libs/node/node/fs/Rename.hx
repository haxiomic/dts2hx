package node.fs;
/**
	Asynchronous rename(2) - Change the name or location of a file or directory.
**/
@:jsRequire("fs", "rename") extern class Rename {
	/**
		Asynchronous rename(2) - Change the name or location of a file or directory.
	**/
	static function __promisify__(oldPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, newPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):js.lib.Promise<Void>;
}