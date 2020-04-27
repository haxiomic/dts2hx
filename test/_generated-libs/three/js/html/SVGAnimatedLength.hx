package js.html;
/**
	Used for attributes of basic type <length> which can be animated.
**/
@:native("SVGAnimatedLength") @tsInterface extern class SVGAnimatedLength {
	function new();
	final animVal : SVGLength;
	final baseVal : SVGLength;
	static var prototype : SVGAnimatedLength;
}