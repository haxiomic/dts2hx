package js.html;
/**
	Corresponds to the <number> basic data type.
**/
@:native("SVGNumber") extern class SVGNumber {
	function new();
	var value : Float;
	static var prototype : ISVGNumber;
}