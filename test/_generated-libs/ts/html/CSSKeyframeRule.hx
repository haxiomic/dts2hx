package ts.html;
/**
	An object representing a set of style for a given keyframe. It corresponds to the contains of a single keyframe of a @keyframes at-rule. It implements the CSSRule interface with a type value of 8 (CSSRule.KEYFRAME_RULE).
**/
@:native("CSSKeyframeRule") extern class CSSKeyframeRule {
	function new();
	var keyText : String;
	final style : ts.lib.ICSSStyleDeclaration;
	static var prototype : ICSSKeyframeRule;
}