package js.html;

/**
	The **`CSSVariableReferenceValue`** interface of the CSS Typed Object Model API allows you to create a custom name for a built-in CSS value.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSVariableReferenceValue)
**/
@:native("CSSVariableReferenceValue") extern class CSSVariableReferenceValue {
	function new(variable:String, ?fallback:CSSUnparsedValue);
	/**
		The **`fallback`** read-only property of the A CSSUnparsedValue.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSVariableReferenceValue/fallback)
	**/
	final fallback : Null<CSSUnparsedValue>;
	/**
		The **`variable`** property of the A string beginning with `--` (that is, a custom property name).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSVariableReferenceValue/variable)
	**/
	var variable : String;
	static var prototype : CSSVariableReferenceValue;
}