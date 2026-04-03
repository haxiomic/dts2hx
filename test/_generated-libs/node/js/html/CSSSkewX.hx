package js.html;

/**
	The **`CSSSkewX`** interface of the CSS Typed Object Model API represents the `skewX()` value of the individual transform property in CSS.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSSkewX)
**/
@:native("CSSSkewX") extern class CSSSkewX {
	function new(ax:CSSNumericValue);
	/**
		The **`ax`** property of the along the x-axis (or abscissa).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSSkewX/ax)
	**/
	var ax : CSSNumericValue;
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
	static var prototype : CSSSkewX;
}