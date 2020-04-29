package js.html;
/**
	A single CSS @media rule. It implements the CSSConditionRule interface, and therefore the CSSGroupingRule and the CSSRule interface with a type value of 4 (CSSRule.MEDIA_RULE).
**/
@:native("CSSMediaRule") extern class CSSMediaRule {
	function new();
	final media : js.lib.IMediaList;
	var conditionText : String;
	final cssRules : js.lib.ICSSRuleList;
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
	static var prototype : ICSSMediaRule;
}