package ts.html;
/**
	Used for attributes of type boolean which can be animated.
**/
@:native("SVGAnimatedBoolean") extern class SVGAnimatedBoolean {
	function new();
	final animVal : Bool;
	var baseVal : Bool;
	static var prototype : ISVGAnimatedBoolean;
}