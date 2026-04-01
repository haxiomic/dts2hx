package unit.ts4_3.ts43;

@:jsRequire("./unit/ts4.3", "TS43.Base") extern class Base {
	function new();
	var greeting : String;
	function greet():String;
	static var prototype : Base;
}