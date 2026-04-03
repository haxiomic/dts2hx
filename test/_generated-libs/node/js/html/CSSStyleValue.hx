package js.html;

/**
	The **`CSSStyleValue`** interface of the CSS Typed Object Model API is the base class of all CSS values accessible through the Typed OM API.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSStyleValue)
**/
@:native("CSSStyleValue") extern class CSSStyleValue {
	function new();
	function toString():String;
	static var prototype : CSSStyleValue;
	/**
		The **`parse()`** static method of the CSSStyleValue interface sets a specific CSS property to the specified values and returns the first value as a CSSStyleValue object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSStyleValue/parse_static)
	**/
	static function parse(property:String, cssText:String):CSSStyleValue;
	/**
		The **`parseAll()`** static method of the CSSStyleValue interface sets all occurrences of a specific CSS property to the specified value and returns an array of CSSStyleValue objects, each containing one of the supplied values.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSStyleValue/parseAll_static)
	**/
	static function parseAll(property:String, cssText:String):Array<CSSStyleValue>;
}