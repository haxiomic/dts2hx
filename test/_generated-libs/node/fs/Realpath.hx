package node.fs;
/**
	Asynchronous realpath(3) - return the canonicalized absolute pathname.
	
	Asynchronous realpath(3) - return the canonicalized absolute pathname.
	
	Asynchronous realpath(3) - return the canonicalized absolute pathname.
	
	Asynchronous realpath(3) - return the canonicalized absolute pathname.
**/
@:jsRequire("fs", "realpath") @valueModuleOnly extern class Realpath {
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; }>, callback:(err:global.nodejs.ErrnoException, resolvedPath:global.IBuffer) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, { @:optional var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, resolvedPath:haxe.extern.EitherType<String, global.IBuffer>) -> Void):Void { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, callback:(err:global.nodejs.ErrnoException, resolvedPath:String) -> Void):Void { })
	static function native(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, options:Null<haxe.extern.EitherType<String, { @:optional var encoding : String; }>>, callback:(err:global.nodejs.ErrnoException, resolvedPath:String) -> Void):Void;
}