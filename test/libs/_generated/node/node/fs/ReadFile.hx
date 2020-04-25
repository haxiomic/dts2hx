package node.fs;
/**
	Asynchronously reads the entire contents of a file.
	
	
	
	Asynchronously reads the entire contents of a file.
	
	
	
	Asynchronously reads the entire contents of a file.
	
	
	
	Asynchronously reads the entire contents of a file.
**/
@:jsRequire("fs", "readFile") extern class ReadFile {
	/**
		Asynchronously reads the entire contents of a file.
		
		
		
		Asynchronously reads the entire contents of a file.
		
		
		
		Asynchronously reads the entire contents of a file.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, options:haxe.extern.EitherType<String, { var encoding : String; @:optional
	var flag : Null<String>; }>):js.lib.Promise<String> { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : Null<String>; @:optional
	var flag : Null<String>; }>):js.lib.Promise<haxe.extern.EitherType<String, global.Buffer>> { })
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<global.Buffer, node.url.URL>>>, ?options:{ @:optional
	var encoding : Null<Any>; @:optional
	var flag : Null<String>; }):js.lib.Promise<global.Buffer>;
}