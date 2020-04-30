package ts.html;
/**
	CSSStyleRule represents a single CSS style rule. It implements the CSSRule interface with a type value of 1 (CSSRule.STYLE_RULE).
**/
@:native("CSSStyleRule") extern class CSSStyleRule {
	function new();
	var selectorText : String;
	final style : ts.lib.ICSSStyleDeclaration;
	static var prototype : ICSSStyleRule;
}