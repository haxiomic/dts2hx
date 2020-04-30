package ts.html;
/**
	Used for attributes of basic type <length> which can be animated.
**/
@:native("SVGAnimatedLength") extern class SVGAnimatedLength {
	function new();
	final animVal : ISVGLength;
	final baseVal : ISVGLength;
	static var prototype : ISVGAnimatedLength;
}