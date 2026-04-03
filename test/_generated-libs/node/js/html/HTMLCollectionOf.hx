package js.html;

typedef HTMLCollectionOf<T:(js.html.DOMElement)> = {
	/**
		The HTMLCollection method `item()` returns the element located at the specified offset into the collection.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLCollection/item)
	**/
	function item(index:Float):Null<T>;
	function namedItem(name:String):Null<T>;
	/**
		The **`HTMLCollection.length`** property returns the number of items in a HTMLCollection.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLCollection/length)
	**/
	final length : Float;
};