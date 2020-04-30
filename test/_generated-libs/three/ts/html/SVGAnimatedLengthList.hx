package ts.html;
/**
	Used for attributes of type SVGLengthList which can be animated.
**/
@:native("SVGAnimatedLengthList") extern class SVGAnimatedLengthList {
	function new();
	final animVal : ts.lib.ISVGLengthList;
	final baseVal : ts.lib.ISVGLengthList;
	static var prototype : ISVGAnimatedLengthList;
}