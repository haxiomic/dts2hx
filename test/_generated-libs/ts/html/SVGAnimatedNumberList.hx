package ts.html;
/**
	The SVGAnimatedNumber interface is used for attributes which take a list of numbers and which can be animated.
**/
@:native("SVGAnimatedNumberList") extern class SVGAnimatedNumberList {
	function new();
	final animVal : SVGNumberList;
	final baseVal : SVGNumberList;
	static var prototype : SVGAnimatedNumberList;
}