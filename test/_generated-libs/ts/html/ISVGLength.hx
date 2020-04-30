package ts.html;
/**
	Correspond to the <length> basic data type.
**/
extern typedef ISVGLength = {
	final unitType : Float;
	var value : Float;
	var valueAsString : String;
	var valueInSpecifiedUnits : Float;
	function convertToSpecifiedUnits(unitType:Float):Void;
	function newValueSpecifiedUnits(unitType:Float, valueInSpecifiedUnits:Float):Void;
	final SVG_LENGTHTYPE_CM : Float;
	final SVG_LENGTHTYPE_EMS : Float;
	final SVG_LENGTHTYPE_EXS : Float;
	final SVG_LENGTHTYPE_IN : Float;
	final SVG_LENGTHTYPE_MM : Float;
	final SVG_LENGTHTYPE_NUMBER : Float;
	final SVG_LENGTHTYPE_PC : Float;
	final SVG_LENGTHTYPE_PERCENTAGE : Float;
	final SVG_LENGTHTYPE_PT : Float;
	final SVG_LENGTHTYPE_PX : Float;
	final SVG_LENGTHTYPE_UNKNOWN : Float;
};