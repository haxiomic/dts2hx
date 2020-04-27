package node.fs;
/**
	Asynchronous mkdir(2) - create a directory.
	
	
	
	Asynchronous mkdir(2) - create a directory with a mode of `0o777`.
**/
@:jsRequire("fs", "mkdir") extern class Mkdir {
	/**
		Asynchronous mkdir(2) - create a directory.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, MakeDirectoryOptions>>):js.lib.Promise<Void>;
}