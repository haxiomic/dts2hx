package js.html;
/**
	Used for attributes of basic type <angle> which can be animated.
**/
@:native("SVGAnimatedAngle") extern class SVGAnimatedAngle {
	function new();
	final animVal : ISVGAngle;
	final baseVal : ISVGAngle;
	static var prototype : ISVGAnimatedAngle;
}