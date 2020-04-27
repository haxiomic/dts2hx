package global.nodejs;
@:native("NodeJS.Timeout") extern class Timeout {
	function ref():Void;
	function refresh():Void;
	function unref():Void;
}