package node.fs;
/**
	Asynchronously append data to a file, creating the file if it does not exist.
	
	
	
	Asynchronously append data to a file, creating the file if it does not exist.
**/
@:jsRequire("fs", "appendFile") extern class AppendFile {
	/**
		Asynchronously append data to a file, creating the file if it does not exist.
	**/
	static function __promisify__(file:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, data:Any, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : Null<String>; @:optional
	var mode : Null<haxe.extern.EitherType<String, Float>>; @:optional
	var flag : Null<String>; }>):js.lib.Promise<Void>;
}