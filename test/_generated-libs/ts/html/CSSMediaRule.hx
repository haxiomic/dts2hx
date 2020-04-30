package ts.html;
/**
	A single CSS @media rule. It implements the CSSConditionRule interface, and therefore the CSSGroupingRule and the CSSRule interface with a type value of 4 (CSSRule.MEDIA_RULE).
**/
@:native("CSSMediaRule") extern class CSSMediaRule {
	function new();
	final media : ts.lib.IMediaList;
	static var prototype : ICSSMediaRule;
}