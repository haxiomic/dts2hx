package node.fs;
/**
	Asynchronous readlink(2) - read value of a symbolic link.
	
	
	
	Asynchronous readlink(2) - read value of a symbolic link.
	
	
	
	Asynchronous readlink(2) - read value of a symbolic link.
	
	
	
	Asynchronous readlink(2) - read value of a symbolic link.
**/
@:jsRequire("fs", "readlink") @valueModuleOnly extern class Readlink {
	/**
		Asynchronous readlink(2) - read value of a symbolic link.
		
		
		
		Asynchronous readlink(2) - read value of a symbolic link.
		
		
		
		Asynchronous readlink(2) - read value of a symbolic link.
	**/
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; }>):js.lib.Promise<global.Buffer> { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>):js.lib.Promise<haxe.extern.EitherType<String, global.Buffer>> { })
	static function __promisify__(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional
	var encoding : String; }>):js.lib.Promise<String>;
}