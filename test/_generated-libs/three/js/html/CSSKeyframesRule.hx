package js.html;
/**
	An object representing a complete set of keyframes for a CSS animation. It corresponds to the contains of a whole @keyframes at-rule. It implements the CSSRule interface with a type value of 7 (CSSRule.KEYFRAMES_RULE).
**/
@:native("CSSKeyframesRule") @tsInterface extern class CSSKeyframesRule {
	function new();
	final cssRules : js.lib.CSSRuleList;
	var name : String;
	function appendRule(rule:String):Void;
	function deleteRule(select:String):Void;
	function findRule(select:String):Null<CSSKeyframeRule>;
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
	static var prototype : CSSKeyframesRule;
}