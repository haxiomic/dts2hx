package js.html;

/**
	The **`CSSPerspective`** interface of the CSS Typed Object Model API represents the perspective() value of the individual transform property in CSS.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSPerspective)
**/
typedef ICSSPerspective = {
	/**
		The **`length`** property of the It is used to apply a perspective transform to the element and its content.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSPerspective/length)
	**/
	var length : CSSPerspectiveValue;
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