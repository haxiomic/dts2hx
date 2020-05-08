package ts.html;
/**
	Used for attributes of basic type <angle> which can be animated.
**/
@:native("SVGAnimatedAngle") extern class SVGAnimatedAngle {
	function new();
	final animVal : SVGAngle;
	final baseVal : SVGAngle;
	static var prototype : SVGAnimatedAngle;
}