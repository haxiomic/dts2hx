package js.html;

/**
	The **`CSSImageValue`** interface of the CSS Typed Object Model API represents values for properties that take an image, for example background-image, list-style-image, or border-image-source.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSImageValue)
**/
@:native("CSSImageValue") extern class CSSImageValue {
	function new();
	function toString():String;
	static var prototype : CSSImageValue;
}