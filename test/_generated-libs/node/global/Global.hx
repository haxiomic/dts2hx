package global;
@:native("") extern class Global {
	static function setImmediate(callback:(args:std.Array<Any>) -> Void, args:std.Array<Any>):global.nodejs.Immediate;
	static function clearImmediate(immediateId:global.nodejs.Immediate):Void;
	static var process : global.nodejs.Process;
	static var global : global.nodejs.Global;
	static var __filename : String;
	static var __dirname : String;
	static var require : global.NodeRequire;
	static var module : global.NodeModule;
	static var exports : Any;
}