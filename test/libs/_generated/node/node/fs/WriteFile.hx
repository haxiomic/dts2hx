package node.fs;
/**
	Asynchronously writes data to a file, replacing the file if it already exists.
	
	
	
	Asynchronously writes data to a file, replacing the file if it already exists.
**/
@:jsRequire("fs", "writeFile") extern class WriteFile {
	/**
		Asynchronously writes data to a file, replacing the file if it already exists.
	**/
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, data:Any, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : Null<String>; @:optional
	var mode : Null<haxe.extern.EitherType<String, Float>>; @:optional
	var flag : Null<String>; }>):js.lib.Promise<Void>;
}