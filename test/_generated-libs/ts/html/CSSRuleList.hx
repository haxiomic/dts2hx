package ts.html;
/**
	A CSSRuleList is an (indirect-modify only) array-like object containing an ordered collection of CSSRule objects.
**/
@:native("CSSRuleList") extern class CSSRuleList {
	function new();
	final length : Float;
	function item(index:Float):Null<CSSRule>;
	static var prototype : CSSRuleList;
}