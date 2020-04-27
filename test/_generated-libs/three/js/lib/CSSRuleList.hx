package js.lib;
/**
	A CSSRuleList is an (indirect-modify only) array-like object containing an ordered collection of CSSRule objects.
**/
@:native("CSSRuleList") @tsInterface extern class CSSRuleList {
	function new();
	final length : Float;
	function item(index:Float):Null<js.html.CSSRule>;
	static var prototype : CSSRuleList;
}