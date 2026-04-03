package js.html;

/**
	The **`CSSUnparsedValue`** interface of the CSS Typed Object Model API represents property values that reference custom properties.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSUnparsedValue)
**/
typedef ICSSUnparsedValue = {
	/**
		The **`length`** read-only property of the An integer.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSUnparsedValue/length)
	**/
	final length : Float;
	function forEach(callbackfn:(value:CSSUnparsedSegment, key:Float, parent:CSSUnparsedValue) -> Void, ?thisArg:Dynamic):Void;
	function entries():js.lib.ArrayIterator<ts.Tuple2<Float, CSSUnparsedSegment>>;
	function keys():js.lib.ArrayIterator<Float>;
	function values():js.lib.ArrayIterator<CSSUnparsedSegment>;
	function toString():String;
};