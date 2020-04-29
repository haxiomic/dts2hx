package js.html;
/**
	Used for attributes which take a list of numbers and which can be animated.
**/
@:native("SVGAnimatedTransformList") extern class SVGAnimatedTransformList {
	function new();
	final animVal : ISVGTransformList;
	final baseVal : ISVGTransformList;
	static var prototype : ISVGAnimatedTransformList;
}