package ts.html;
/**
	Any CSS at-rule that contains other rules nested within it.
**/
@:native("CSSGroupingRule") extern class CSSGroupingRule {
	function new();
	final cssRules : ts.lib.ICSSRuleList;
	function deleteRule(index:Float):Void;
	function insertRule(rule:String, index:Float):Float;
	static var prototype : ICSSGroupingRule;
}