package js.html;
/**
	The SVGAnimatedNumber interface is used for attributes which take a list of numbers and which can be animated.
**/
@:native("SVGAnimatedNumberList") @tsInterface extern class SVGAnimatedNumberList {
	function new();
	final animVal : js.lib.SVGNumberList;
	final baseVal : js.lib.SVGNumberList;
	static var prototype : SVGAnimatedNumberList;
}