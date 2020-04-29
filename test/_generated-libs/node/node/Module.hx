package node;
@:jsRequire("module") extern class Module {
	function new(id:String, ?parent:node.Module);
	var exports : Any;
	var require : global.NodeRequireFunction;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<node.Module>;
	var children : std.Array<node.Module>;
	var paths : std.Array<String>;
	static function runMain():Void;
	static function wrap(code:String):String;
	static function createRequireFromPath(path:String):(path:String) -> Any;
	static var builtinModules : std.Array<String>;
	static var Module : {
		function runMain():Void;
		function wrap(code:String):String;
		function createRequireFromPath(path:String):(path:String) -> Any;
		var builtinModules : std.Array<String>;
		var Module : Any;
	};
}