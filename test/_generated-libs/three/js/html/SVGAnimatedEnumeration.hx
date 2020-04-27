package js.html;
/**
	Used for attributes whose value must be a constant from a particular enumeration and which can be animated.
**/
@:native("SVGAnimatedEnumeration") @tsInterface extern class SVGAnimatedEnumeration {
	function new();
	final animVal : Float;
	var baseVal : Float;
	static var prototype : SVGAnimatedEnumeration;
}