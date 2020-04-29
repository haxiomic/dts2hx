package js.html;
/**
	The SVGAnimatedString interface represents string attributes which can be animated from each SVG declaration. You need to create SVG attribute before doing anything else, everything should be declared inside this.
**/
@:native("SVGAnimatedString") extern class SVGAnimatedString {
	function new();
	final animVal : String;
	var baseVal : String;
	static var prototype : ISVGAnimatedString;
}