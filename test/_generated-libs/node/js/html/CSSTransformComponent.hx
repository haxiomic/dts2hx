package js.html;

/**
	The **`CSSTransformComponent`** interface of the CSS Typed Object Model API is part of the CSSTransformValue interface.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTransformComponent)
**/
@:native("CSSTransformComponent") extern class CSSTransformComponent {
	function new();
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
	static var prototype : CSSTransformComponent;
}