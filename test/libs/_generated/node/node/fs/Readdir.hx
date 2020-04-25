package node.fs;
/**
	Asynchronous readdir(3) - read a directory.
	
	
	
	Asynchronous readdir(3) - read a directory.
	
	
	
	Asynchronous readdir(3) - read a directory.
	
	
	
	Asynchronous readdir(3) - read a directory.
	
	
	
	Asynchronous readdir(3) - read a directory.
**/
@:jsRequire("fs", "readdir") extern class Readdir {
	/**
		Asynchronous readdir(3) - read a directory.
		
		
		
		Asynchronous readdir(3) - read a directory.
		
		
		
		Asynchronous readdir(3) - read a directory.
		
		
		
		Asynchronous readdir(3) - read a directory.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; @:optional
	var withFileTypes : Null<Bool>; }>):js.lib.Promise<std.Array<global.Buffer>> { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : Null<String>; @:optional
	var withFileTypes : Null<Bool>; }>):js.lib.Promise<haxe.extern.EitherType<std.Array<String>, std.Array<global.Buffer>>> { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:{ var withFileTypes : Bool; }):js.lib.Promise<std.Array<Dirent>> { })
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { var encoding : Null<String>; @:optional
	var withFileTypes : Null<Bool>; }>):js.lib.Promise<std.Array<String>>;
}