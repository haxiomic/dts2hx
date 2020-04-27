package global.nodejs;
@:native("NodeJS.Timeout") extern class Timeout implements Timer {
	function ref():Void;
	function refresh():Void;
	function unref():Void;
}