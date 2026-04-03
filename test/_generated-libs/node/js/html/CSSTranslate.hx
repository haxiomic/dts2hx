package js.html;

/**
	The **`CSSTranslate`** interface of the CSS Typed Object Model API represents the translate() value of the individual transform property in CSS.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTranslate)
**/
@:native("CSSTranslate") extern class CSSTranslate {
	function new(x:CSSNumericValue, y:CSSNumericValue, ?z:CSSNumericValue);
	/**
		The **`x`** property of the translating vector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTranslate/x)
	**/
	var x : CSSNumericValue;
	/**
		The **`y`** property of the translating vector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTranslate/y)
	**/
	var y : CSSNumericValue;
	/**
		The **`z`** property of the vector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTranslate/z)
	**/
	var z : CSSNumericValue;
	/**
		The **`is2D`** read-only property of the CSSTransformComponent interface indicates where the transform is 2D or 3D.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTransformComponent/is2D)
	**/
	var is2D : Bool;
	/**
		The **`toMatrix()`** method of the object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTransformComponent/toMatrix)
	**/
	function toMatrix():js.html.DOMMatrix;
	function toString():String;
	static var prototype : CSSTranslate;
}