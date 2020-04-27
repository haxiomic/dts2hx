package js.html;
/**
	Used for attributes of type SVGLengthList which can be animated.
**/
@:native("SVGAnimatedLengthList") @tsInterface extern class SVGAnimatedLengthList {
	function new();
	final animVal : js.lib.SVGLengthList;
	final baseVal : js.lib.SVGLengthList;
	static var prototype : SVGAnimatedLengthList;
}