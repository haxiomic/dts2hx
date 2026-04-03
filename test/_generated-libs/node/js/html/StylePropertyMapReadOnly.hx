package js.html;

/**
	The **`StylePropertyMapReadOnly`** interface of the CSS Typed Object Model API provides a read-only representation of a CSS declaration block that is an alternative to CSSStyleDeclaration.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly)
**/
@:native("StylePropertyMapReadOnly") extern class StylePropertyMapReadOnly {
	function new();
	/**
		The **`size`** read-only property of the containing the size of the `StylePropertyMapReadOnly` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/size)
	**/
	final size : Float;
	/**
		The **`get()`** method of the object for the first value of the specified property.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/get)
	**/
	function get(property:String):Null<CSSStyleValue>;
	/**
		The **`getAll()`** method of the ```js-nolint getAll(property) ``` - `property` - : The name of the property to retrieve all values of.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/getAll)
	**/
	function getAll(property:String):Array<CSSStyleValue>;
	/**
		The **`has()`** method of the property is in the `StylePropertyMapReadOnly` object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/has)
	**/
	function has(property:String):Bool;
	function forEach(callbackfn:(value:Array<CSSStyleValue>, key:String, parent:StylePropertyMapReadOnly) -> Void, ?thisArg:Dynamic):Void;
	function entries():js.lib.StylePropertyMapReadOnlyIterator<ts.Tuple2<String, Iterable<CSSStyleValue>>>;
	function keys():js.lib.StylePropertyMapReadOnlyIterator<String>;
	function values():js.lib.StylePropertyMapReadOnlyIterator<Iterable<CSSStyleValue>>;
	static var prototype : StylePropertyMapReadOnly;
}