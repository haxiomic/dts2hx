package js.html;

/**
	The **`CSSKeywordValue`** interface of the CSS Typed Object Model API creates an object to represent CSS keywords and other identifiers.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSKeywordValue)
**/
@:native("CSSKeywordValue") extern class CSSKeywordValue {
	function new(value:String);
	/**
		The **`value`** property of the `CSSKeywordValue`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSKeywordValue/value)
	**/
	var value : String;
	function toString():String;
	static var prototype : CSSKeywordValue;
}