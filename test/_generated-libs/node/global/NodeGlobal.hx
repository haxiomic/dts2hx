package global;

@:native("") extern class NodeGlobal {
	static function setImmediate(callback:(args:haxe.extern.Rest<Dynamic>) -> Void, args:haxe.extern.Rest<Dynamic>):global.nodejs.Immediate;
	static function clearImmediate(immediateId:global.nodejs.Immediate):Void;
	static var process : global.nodejs.Process;
	static var global : global.nodejs.Global;
	static var __filename : String;
	static var __dirname : String;
	static var require : global.NodeRequire;
	static var module : global.NodeModule;
	static var exports : Dynamic;
}