package js.html;

/**
	The **`CSSContainerRule`** interface represents a single CSS
**/
@:native("CSSContainerRule") extern class CSSContainerRule {
	function new();
	/**
		The read-only **`containerName`** property of the CSSContainerRule interface represents the container name of the associated CSS
	**/
	final containerName : String;
	/**
		The read-only **`containerQuery`** property of the CSSContainerRule interface returns a string representing the container conditions that are evaluated when the container changes size in order to determine if the styles in the associated
	**/
	final containerQuery : String;
	/**
		The read-only **`conditionText`** property of the CSSConditionRule interface returns or sets the text of the CSS rule.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSConditionRule/conditionText)
	**/
	final conditionText : String;
	/**
		The **`cssRules`** property of the a collection of CSSRule objects.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSGroupingRule/cssRules)
	**/
	final cssRules : js.html.CSSRuleList;
	/**
		The **`deleteRule()`** method of the rules.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSGroupingRule/deleteRule)
	**/
	function deleteRule(index:Float):Void;
	/**
		The **`insertRule()`** method of the ```js-nolint insertRule(rule) insertRule(rule, index) ``` - `rule` - : A string - `index` [MISSING: optional_inline] - : An optional index at which to insert the rule; defaults to 0.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSGroupingRule/insertRule)
	**/
	function insertRule(rule:String, ?index:Float):Float;
	/**
		The **`cssText`** property of the CSSRule interface returns the actual text of a CSSStyleSheet style-rule.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRule/cssText)
	**/
	var cssText : String;
	/**
		The **`parentRule`** property of the CSSRule interface returns the containing rule of the current rule if this exists, or otherwise returns null.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRule/parentRule)
	**/
	final parentRule : Null<js.html.CSSRule>;
	/**
		The **`parentStyleSheet`** property of the the current rule is defined.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRule/parentStyleSheet)
	**/
	final parentStyleSheet : Null<js.html.CSSStyleSheet>;
	/**
		The read-only **`type`** property of the indicating which type of rule the CSSRule represents.
	**/
	final type : Float;
	final STYLE_RULE : Int;
	final CHARSET_RULE : Int;
	final IMPORT_RULE : Int;
	final MEDIA_RULE : Int;
	final FONT_FACE_RULE : Int;
	final PAGE_RULE : Int;
	final NAMESPACE_RULE : Int;
	final KEYFRAMES_RULE : Int;
	final KEYFRAME_RULE : Int;
	final SUPPORTS_RULE : Int;
	final COUNTER_STYLE_RULE : Int;
	final FONT_FEATURE_VALUES_RULE : Int;
	static var prototype : CSSContainerRule;
}