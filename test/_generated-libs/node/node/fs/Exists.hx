package node.fs;
/**
	Asynchronously tests whether or not the given path exists by checking with the file system.
**/
@:jsRequire("fs", "exists") @valueModuleOnly extern class Exists {
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):js.lib.Promise<Bool>;
}