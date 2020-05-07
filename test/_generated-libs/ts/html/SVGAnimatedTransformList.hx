package ts.html;
/**
	Used for attributes which take a list of numbers and which can be animated.
**/
@:native("SVGAnimatedTransformList") extern class SVGAnimatedTransformList {
	function new();
	final animVal : SVGTransformList;
	final baseVal : SVGTransformList;
	static var prototype : SVGAnimatedTransformList;
}