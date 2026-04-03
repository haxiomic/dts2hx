package js.html;

/**
	The **`CSSTransformValue`** interface of the CSS Typed Object Model API represents `transform-list` values as used by the CSS transform property.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTransformValue)
**/
@:native("CSSTransformValue") extern class CSSTransformValue {
	function new(transforms:Array<CSSTransformComponent>);
	/**
		The read-only **`is2D`** property of the In the case of the `CSSTransformValue` this property returns true unless any of the individual functions return false for `Is2D`, in which case it returns false.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTransformValue/is2D)
	**/
	final is2D : Bool;
	/**
		The read-only **`length`** property of the the list.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTransformValue/length)
	**/
	final length : Float;
	/**
		The **`toMatrix()`** method of the ```js-nolint toMatrix() ``` None.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTransformValue/toMatrix)
	**/
	function toMatrix():js.html.DOMMatrix;
	function forEach(callbackfn:(value:CSSTransformComponent, key:Float, parent:CSSTransformValue) -> Void, ?thisArg:Dynamic):Void;
	function entries():js.lib.ArrayIterator<ts.Tuple2<Float, CSSTransformComponent>>;
	function keys():js.lib.ArrayIterator<Float>;
	function values():js.lib.ArrayIterator<CSSTransformComponent>;
	function toString():String;
	static var prototype : CSSTransformValue;
}