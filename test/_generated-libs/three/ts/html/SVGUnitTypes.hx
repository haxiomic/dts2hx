package ts.html;
/**
	A commonly used set of constants used for reflecting gradientUnits, patternContentUnits and other similar attributes.
**/
@:native("SVGUnitTypes") extern class SVGUnitTypes {
	function new();
	final SVG_UNIT_TYPE_OBJECTBOUNDINGBOX : Float;
	final SVG_UNIT_TYPE_UNKNOWN : Float;
	final SVG_UNIT_TYPE_USERSPACEONUSE : Float;
	static var prototype : ISVGUnitTypes;
	@:native("SVG_UNIT_TYPE_OBJECTBOUNDINGBOX")
	static final SVG_UNIT_TYPE_OBJECTBOUNDINGBOX_ : Float;
	@:native("SVG_UNIT_TYPE_UNKNOWN")
	static final SVG_UNIT_TYPE_UNKNOWN_ : Float;
	@:native("SVG_UNIT_TYPE_USERSPACEONUSE")
	static final SVG_UNIT_TYPE_USERSPACEONUSE_ : Float;
}