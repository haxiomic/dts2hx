package node.fs;
/**
	Asynchronously tests a user's permissions for the file specified by path.
	
	
	
	Asynchronously tests a user's permissions for the file specified by path.
**/
@:jsRequire("fs", "access") extern class Access {
	/**
		Asynchronously tests a user's permissions for the file specified by path.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?mode:Float):js.lib.Promise<Void>;
}