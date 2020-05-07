package ts.html;
/**
	Used for attributes of type SVGLengthList which can be animated.
**/
@:native("SVGAnimatedLengthList") extern class SVGAnimatedLengthList {
	function new();
	final animVal : SVGLengthList;
	final baseVal : SVGLengthList;
	static var prototype : SVGAnimatedLengthList;
}