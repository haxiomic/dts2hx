package js.html;
/**
	Used to represent a value that can be an <angle> or <number> value. An SVGAngle reflected through the animVal attribute is always read only.
**/
@:native("SVGAngle") extern class SVGAngle {
	function new();
	final unitType : Float;
	var value : Float;
	var valueAsString : String;
	var valueInSpecifiedUnits : Float;
	function convertToSpecifiedUnits(unitType:Float):Void;
	function newValueSpecifiedUnits(unitType:Float, valueInSpecifiedUnits:Float):Void;
	final SVG_ANGLETYPE_DEG : Float;
	final SVG_ANGLETYPE_GRAD : Float;
	final SVG_ANGLETYPE_RAD : Float;
	final SVG_ANGLETYPE_UNKNOWN : Float;
	final SVG_ANGLETYPE_UNSPECIFIED : Float;
	static var prototype : ISVGAngle;
	@:native("SVG_ANGLETYPE_DEG")
	static final SVG_ANGLETYPE_DEG_ : Float;
	@:native("SVG_ANGLETYPE_GRAD")
	static final SVG_ANGLETYPE_GRAD_ : Float;
	@:native("SVG_ANGLETYPE_RAD")
	static final SVG_ANGLETYPE_RAD_ : Float;
	@:native("SVG_ANGLETYPE_UNKNOWN")
	static final SVG_ANGLETYPE_UNKNOWN_ : Float;
	@:native("SVG_ANGLETYPE_UNSPECIFIED")
	static final SVG_ANGLETYPE_UNSPECIFIED_ : Float;
}