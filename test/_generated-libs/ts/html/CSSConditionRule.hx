package ts.html;
/**
	A single condition CSS at-rule, which consists of a condition and a statement block. It is a child of CSSGroupingRule.
**/
@:native("CSSConditionRule") extern class CSSConditionRule {
	function new();
	var conditionText : String;
	final cssRules : ts.lib.ICSSRuleList;
	function deleteRule(index:Float):Void;
	function insertRule(rule:String, index:Float):Float;
	var cssText : String;
	final parentRule : Null<ICSSRule>;
	final parentStyleSheet : Null<ICSSStyleSheet>;
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
	static var prototype : ICSSConditionRule;
}