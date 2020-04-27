package js.html;
/**
	An object representing a single CSS @supports at-rule. It implements the CSSConditionRule interface, and therefore the CSSRule and CSSGroupingRule interfaces with a type value of 12 (CSSRule.SUPPORTS_RULE).
**/
@:native("CSSSupportsRule") @tsInterface extern class CSSSupportsRule {
	function new();
	var conditionText : String;
	final cssRules : js.lib.CSSRuleList;
	function deleteRule(index:Float):Void;
	function insertRule(rule:String, index:Float):Float;
	var cssText : String;
	final parentRule : Null<CSSRule>;
	final parentStyleSheet : Null<CSSStyleSheet>;
	final type : Float;
	final CHARSET_RULE : Float;
	final FONT_FACE_RULE : Float;
	final IMPORT_RULE : Float;
	final KEYFRAMES_RULE : Float;
	final KEYFRAME_RULE : Float;
	final MEDIA_RULE : Float;
	final NAMESPACE_RULE : Float;
	final PAGE_RULE : Float;
	final STYLE_RULE : Float;
	final SUPPORTS_RULE : Float;
	final UNKNOWN_RULE : Float;
	final VIEWPORT_RULE : Float;
	static var prototype : CSSSupportsRule;
}