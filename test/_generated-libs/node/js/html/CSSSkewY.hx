package js.html;

/**
	The **`CSSSkewY`** interface of the CSS Typed Object Model API represents the `skewY()` value of the individual transform property in CSS.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSSkewY)
**/
@:native("CSSSkewY") extern class CSSSkewY {
	function new(ay:CSSNumericValue);
	/**
		The **`ay`** property of the along the y-axis (or ordinate).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSSkewY/ay)
	**/
	var ay : CSSNumericValue;
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
	static var prototype : CSSSkewY;
}