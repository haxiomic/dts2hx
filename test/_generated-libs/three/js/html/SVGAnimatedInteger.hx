package js.html;
/**
	Used for attributes of basic type <integer> which can be animated.
**/
@:native("SVGAnimatedInteger") @tsInterface extern class SVGAnimatedInteger {
	function new();
	final animVal : Float;
	var baseVal : Float;
	static var prototype : SVGAnimatedInteger;
}