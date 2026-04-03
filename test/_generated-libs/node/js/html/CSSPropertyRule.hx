package js.html;

/**
	The **`CSSPropertyRule`** interface of the CSS Properties and Values API represents a single CSS
**/
@:native("CSSPropertyRule") extern class CSSPropertyRule {
	function new();
	/**
		The read-only **`inherits`** property of the CSSPropertyRule interface returns the inherit flag of the custom property registration represented by the
	**/
	final inherits : Bool;
	/**
		The read-only **`initialValue`** nullable property of the CSSPropertyRule interface returns the initial value of the custom property registration represented by the
	**/
	final initialValue : Null<String>;
	/**
		The read-only **`name`** property of the CSSPropertyRule interface represents the property name, this being the serialization of the name given to the custom property in the
	**/
	final name : String;
	/**
		The read-only **`syntax`** property of the CSSPropertyRule interface returns the literal syntax of the custom property registration represented by the
	**/
	final syntax : String;
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
	static var prototype : CSSPropertyRule;
}