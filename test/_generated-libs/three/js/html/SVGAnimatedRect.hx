package js.html;
/**
	Used for attributes of basic SVGRect which can be animated.
**/
@:native("SVGAnimatedRect") extern class SVGAnimatedRect {
	function new();
	final animVal : IDOMRectReadOnly;
	final baseVal : IDOMRect;
	static var prototype : ISVGAnimatedRect;
}