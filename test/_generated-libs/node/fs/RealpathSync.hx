package node.fs;
/**
	Synchronous realpath(3) - return the canonicalized absolute pathname.
	
	Synchronous realpath(3) - return the canonicalized absolute pathname.
	
	Synchronous realpath(3) - return the canonicalized absolute pathname.
**/
@:jsRequire("fs", "realpathSync") @valueModuleOnly extern class RealpathSync {
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, options:haxe.extern.EitherType<String, { var encoding : String; }>):global.IBuffer { })
	@:overload(function(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; }>):haxe.extern.EitherType<String, global.IBuffer> { })
	static function native(path:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, node.url.URL>>, ?options:haxe.extern.EitherType<String, { @:optional var encoding : String; }>):String;
}