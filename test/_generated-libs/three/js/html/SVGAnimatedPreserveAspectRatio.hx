package js.html;
/**
	Used for attributes of type SVGPreserveAspectRatio which can be animated.
**/
@:native("SVGAnimatedPreserveAspectRatio") @tsInterface extern class SVGAnimatedPreserveAspectRatio {
	function new();
	final animVal : SVGPreserveAspectRatio;
	final baseVal : SVGPreserveAspectRatio;
	static var prototype : SVGAnimatedPreserveAspectRatio;
}