package node.fs;
/**
	Asynchronously change file timestamps of the file referenced by the supplied path.
**/
@:jsRequire("fs", "utimes") extern class Utimes {
	/**
		Asynchronously change file timestamps of the file referenced by the supplied path.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, atime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>, mtime:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, js.lib.Date>>):js.lib.Promise<Void>;
}