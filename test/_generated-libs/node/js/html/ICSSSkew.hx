package js.html;

/**
	The **`CSSSkew`** interface of the CSS Typed Object Model API is part of the CSSTransformValue interface.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSSkew)
**/
typedef ICSSSkew = {
	/**
		The **`ax`** property of the along the x-axis (or abscissa).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSSkew/ax)
	**/
	var ax : CSSNumericValue;
	/**
		The **`ay`** property of the along the y-axis (or ordinate).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSSkew/ay)
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
};