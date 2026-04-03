package js.html;

/**
	The **`CSSKeywordValue`** interface of the CSS Typed Object Model API creates an object to represent CSS keywords and other identifiers.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSKeywordValue)
**/
typedef ICSSKeywordValue = {
	/**
		The **`value`** property of the `CSSKeywordValue`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSKeywordValue/value)
	**/
	var value : String;
	function toString():String;
};