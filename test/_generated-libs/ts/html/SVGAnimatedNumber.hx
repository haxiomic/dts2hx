package ts.html;
/**
	Used for attributes of basic type <Number> which can be animated.
**/
@:native("SVGAnimatedNumber") extern class SVGAnimatedNumber {
	function new();
	final animVal : Float;
	var baseVal : Float;
	static var prototype : SVGAnimatedNumber;
}