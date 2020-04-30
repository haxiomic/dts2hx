package ts.html;
/**
	A single condition CSS at-rule, which consists of a condition and a statement block. It is a child of CSSGroupingRule.
**/
@:native("CSSConditionRule") extern class CSSConditionRule {
	function new();
	var conditionText : String;
	static var prototype : ICSSConditionRule;
}