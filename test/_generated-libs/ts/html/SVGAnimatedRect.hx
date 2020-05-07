package ts.html;
/**
	Used for attributes of basic SVGRect which can be animated.
**/
@:native("SVGAnimatedRect") extern class SVGAnimatedRect {
	function new();
	final animVal : DOMRectReadOnly;
	final baseVal : DOMRect;
	static var prototype : SVGAnimatedRect;
}