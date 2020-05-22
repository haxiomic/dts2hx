package global.nodejs;

@:native("NodeJS.Immediate") extern class Immediate {
	function new();
	function ref():Void;
	function unref():Void;
	var _onImmediate : haxe.Constraints.Function;
	static var prototype : Immediate;
}