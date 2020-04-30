package ts.html;
/**
	CSSPageRule is an interface representing a single CSS @page rule. It implements the CSSRule interface with a type value of 6 (CSSRule.PAGE_RULE).
**/
@:native("CSSPageRule") extern class CSSPageRule {
	function new();
	final pseudoClass : String;
	final selector : String;
	var selectorText : String;
	final style : ts.lib.ICSSStyleDeclaration;
	static var prototype : ICSSPageRule;
}