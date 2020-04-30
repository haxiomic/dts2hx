package ts.html;
/**
	An object representing a single CSS @namespace at-rule. It implements the CSSRule interface, with a type value of 10 (CSSRule.NAMESPACE_RULE).
**/
@:native("CSSNamespaceRule") extern class CSSNamespaceRule {
	function new();
	final namespaceURI : String;
	final prefix : String;
	static var prototype : ICSSNamespaceRule;
}