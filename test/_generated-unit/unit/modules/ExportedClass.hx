package unit.modules;

@:jsRequire("./unit/modules", "ExportedClass") extern class ExportedClass {
	function new();
	var instanceField : String;
	function instanceMethod():Void;
	static var prototype : ExportedClass;
	static var staticField : Float;
	static function staticMethod():String;
}