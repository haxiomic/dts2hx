package js.html;
/**
	Used for attributes of basic SVGRect which can be animated.
**/
@:native("SVGAnimatedRect") @tsInterface extern class SVGAnimatedRect {
	function new();
	final animVal : DOMRectReadOnly;
	final baseVal : DOMRect;
	static var prototype : SVGAnimatedRect;
}