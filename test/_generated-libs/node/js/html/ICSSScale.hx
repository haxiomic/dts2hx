package js.html;

/**
	The **`CSSScale`** interface of the CSS Typed Object Model API represents the scale() and scale3d() values of the individual transform property in CSS.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSScale)
**/
typedef ICSSScale = {
	/**
		The **`x`** property of the translating vector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSScale/x)
	**/
	var x : CSSNumberish;
	/**
		The **`y`** property of the translating vector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSScale/y)
	**/
	var y : CSSNumberish;
	/**
		The **`z`** property of the vector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSScale/z)
	**/
	var z : CSSNumberish;
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