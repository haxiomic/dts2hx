package ts.html;
/**
	An object representing a complete set of keyframes for a CSS animation. It corresponds to the contains of a whole @keyframes at-rule. It implements the CSSRule interface with a type value of 7 (CSSRule.KEYFRAMES_RULE).
**/
@:native("CSSKeyframesRule") extern class CSSKeyframesRule {
	function new();
	final cssRules : ts.lib.ICSSRuleList;
	var name : String;
	function appendRule(rule:String):Void;
	function deleteRule(select:String):Void;
	function findRule(select:String):Null<ICSSKeyframeRule>;
	static var prototype : ICSSKeyframesRule;
}