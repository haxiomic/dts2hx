package ts.html;
/**
	An object representing a single CSS @supports at-rule. It implements the CSSConditionRule interface, and therefore the CSSRule and CSSGroupingRule interfaces with a type value of 12 (CSSRule.SUPPORTS_RULE).
**/
@:native("CSSSupportsRule") extern class CSSSupportsRule {
	function new();
	static var prototype : ICSSSupportsRule;
}