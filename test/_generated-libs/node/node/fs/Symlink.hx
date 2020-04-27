package node.fs;
/**
	Asynchronous symlink(2) - Create a new symbolic link to an existing file.
	
	
	
	Asynchronous symlink(2) - Create a new symbolic link to an existing file.
**/
@:jsRequire("fs", "symlink") @valueModuleOnly extern class Symlink {
	/**
		Asynchronous symlink(2) - Create a new symbolic link to an existing file.
	**/
	static function __promisify__(target:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?type:String):js.lib.Promise<Void>;
}