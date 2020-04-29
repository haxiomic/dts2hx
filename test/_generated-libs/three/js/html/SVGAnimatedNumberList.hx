package js.html;
/**
	The SVGAnimatedNumber interface is used for attributes which take a list of numbers and which can be animated.
**/
@:native("SVGAnimatedNumberList") extern class SVGAnimatedNumberList {
	function new();
	final animVal : js.lib.ISVGNumberList;
	final baseVal : js.lib.ISVGNumberList;
	static var prototype : ISVGAnimatedNumberList;
}