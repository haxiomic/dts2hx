package global.nodejs;
@:native("NodeJS.Module") extern class Module {
	function new(id:String, ?parent:Module);
	var exports : Dynamic;
	var require : global.NodeRequireFunction;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<Module>;
	var children : std.Array<Module>;
	var paths : std.Array<String>;
	static function runMain():Void;
	static function wrap(code:String):String;
	static function createRequireFromPath(path:String):(path:String) -> Dynamic;
	static var builtinModules : std.Array<String>;
	static var Module : {
		function runMain():Void;
		function wrap(code:String):String;
		function createRequireFromPath(path:String):(path:String) -> Dynamic;
		var builtinModules : std.Array<String>;
		var Module : Dynamic;
	};
}