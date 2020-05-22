package global.nodejs;

@:native("NodeJS.Timeout") extern class Timeout {
	function new();
	function ref():Void;
	function refresh():Void;
	function unref():Void;
	static var prototype : Timeout;
}