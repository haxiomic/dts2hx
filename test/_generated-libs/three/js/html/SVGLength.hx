package js.html;
/**
	Correspond to the <length> basic data type.
**/
@:native("SVGLength") extern class SVGLength {
	function new();
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
	static var prototype : ISVGLength;
	@:native("SVG_LENGTHTYPE_CM")
	static final SVG_LENGTHTYPE_CM_ : Float;
	@:native("SVG_LENGTHTYPE_EMS")
	static final SVG_LENGTHTYPE_EMS_ : Float;
	@:native("SVG_LENGTHTYPE_EXS")
	static final SVG_LENGTHTYPE_EXS_ : Float;
	@:native("SVG_LENGTHTYPE_IN")
	static final SVG_LENGTHTYPE_IN_ : Float;
	@:native("SVG_LENGTHTYPE_MM")
	static final SVG_LENGTHTYPE_MM_ : Float;
	@:native("SVG_LENGTHTYPE_NUMBER")
	static final SVG_LENGTHTYPE_NUMBER_ : Float;
	@:native("SVG_LENGTHTYPE_PC")
	static final SVG_LENGTHTYPE_PC_ : Float;
	@:native("SVG_LENGTHTYPE_PERCENTAGE")
	static final SVG_LENGTHTYPE_PERCENTAGE_ : Float;
	@:native("SVG_LENGTHTYPE_PT")
	static final SVG_LENGTHTYPE_PT_ : Float;
	@:native("SVG_LENGTHTYPE_PX")
	static final SVG_LENGTHTYPE_PX_ : Float;
	@:native("SVG_LENGTHTYPE_UNKNOWN")
	static final SVG_LENGTHTYPE_UNKNOWN_ : Float;
}