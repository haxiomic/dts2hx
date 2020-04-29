package js.html;
/**
	Used for attributes of type SVGLengthList which can be animated.
**/
@:native("SVGAnimatedLengthList") extern class SVGAnimatedLengthList {
	function new();
	final animVal : js.lib.ISVGLengthList;
	final baseVal : js.lib.ISVGLengthList;
	static var prototype : ISVGAnimatedLengthList;
}