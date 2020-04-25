package global.nodejs;
@:native("NodeJS.Module") extern class Module {
	function new(id:String, ?parent:Module);
	var exports : Any;
	var require : global.NodeRequireFunction;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<Module>;
	var children : std.Array<Module>;
	var paths : std.Array<String>;
	static function runMain():Void;
	static function wrap(code:String):String;
	static function createRequireFromPath(path:String):(path:String) -> Any;
	static var builtinModules : std.Array<String>;
	static var Module : { static function runMain():Void; static function wrap(code:String):String; static function createRequireFromPath(path:String):(path:String) -> Any; static var builtinModules : std.Array<String>; static var Module : Any; };
}