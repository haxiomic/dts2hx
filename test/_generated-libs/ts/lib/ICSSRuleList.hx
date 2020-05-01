package ts.lib;
/**
	A CSSRuleList is an (indirect-modify only) array-like object containing an ordered collection of CSSRule objects.
**/
typedef ICSSRuleList = {
	final length : Float;
	function item(index:Float):Null<ts.html.ICSSRule>;
};