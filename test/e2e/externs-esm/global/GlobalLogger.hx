package global;

@:native("GlobalLogger") extern class GlobalLogger {
	function new(prefix:String);
	function log(message:String):Void;
	final prefix : String;
	static var prototype : GlobalLogger;
}