package node.fs;
/**
	Asynchronous stat(2) - Get file status.
**/
@:jsRequire("fs", "stat") extern class Stat {
	/**
		Asynchronous stat(2) - Get file status.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):js.lib.Promise<Stats>;
}