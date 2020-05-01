package ts.html;
/**
	Used to represent a value that can be an <angle> or <number> value. An SVGAngle reflected through the animVal attribute is always read only.
**/
typedef ISVGAngle = {
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
};