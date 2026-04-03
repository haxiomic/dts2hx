package js.html;

/**
	The **`CSSMatrixComponent`** interface of the CSS Typed Object Model API represents the matrix() and matrix3d() values of the individual transform property in CSS.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMatrixComponent)
**/
typedef ICSSMatrixComponent = {
	/**
		The **`matrix`** property of the See the matrix() and matrix3d() pages for examples.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMatrixComponent/matrix)
	**/
	var matrix : js.html.DOMMatrix;
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