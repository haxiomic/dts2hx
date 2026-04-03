package js.html;

/**
	The **`CSSNumericArray`** interface of the CSS Typed Object Model API contains a list of CSSNumericValue objects.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericArray)
**/
@:native("CSSNumericArray") extern class CSSNumericArray {
	function new();
	/**
		The read-only **`length`** property of the An integer representing the number of CSSNumericValue objects in the list.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericArray/length)
	**/
	final length : Float;
	function forEach(callbackfn:(value:CSSNumericValue, key:Float, parent:CSSNumericArray) -> Void, ?thisArg:Dynamic):Void;
	function entries():js.lib.ArrayIterator<ts.Tuple2<Float, CSSNumericValue>>;
	function keys():js.lib.ArrayIterator<Float>;
	function values():js.lib.ArrayIterator<CSSNumericValue>;
	static var prototype : CSSNumericArray;
}