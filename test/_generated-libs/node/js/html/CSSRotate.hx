package js.html;

/**
	The **`CSSRotate`** interface of the CSS Typed Object Model API represents the rotate value of the individual transform property in CSS.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRotate)
**/
@:native("CSSRotate") extern class CSSRotate {
	@:overload(function(x:CSSNumberish, y:CSSNumberish, z:CSSNumberish, angle:CSSNumericValue):CSSRotate { })
	function new(angle:CSSNumericValue);
	/**
		The **`angle`** property of the denotes a clockwise rotation, a negative angle a counter-clockwise one.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRotate/angle)
	**/
	var angle : CSSNumericValue;
	/**
		The **`x`** property of the translating vector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRotate/x)
	**/
	var x : CSSNumberish;
	/**
		The **`y`** property of the translating vector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRotate/y)
	**/
	var y : CSSNumberish;
	/**
		The **`z`** property of the vector.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRotate/z)
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
	static var prototype : CSSRotate;
}