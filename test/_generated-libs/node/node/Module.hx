package node;
@:jsRequire("module") extern class Module {
	function new(id:String, ?parent:node.Module);
	var exports : Dynamic;
	dynamic function require(id:String):Dynamic;
	var id : String;
	var filename : String;
	var loaded : Bool;
	var parent : Null<node.Module>;
	var children : Array<node.Module>;
	var paths : Array<String>;
	static function runMain():Void;
	static function wrap(code:String):String;
	static function createRequireFromPath(path:String):(path:String) -> Dynamic;
	static var builtinModules : Array<String>;
	static var Module : {
		function runMain():Void;
		function wrap(code:String):String;
		function createRequireFromPath(path:String):(path:String) -> Dynamic;
		var builtinModules : Array<String>;
		var Module : Dynamic;
	};
}