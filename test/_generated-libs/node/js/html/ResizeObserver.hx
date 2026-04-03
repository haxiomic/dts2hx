package js.html;

/**
	The **`ResizeObserver`** interface reports changes to the dimensions of an Element's content or border box, or the bounding box of an SVGElement.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserver)
**/
@:native("ResizeObserver") extern class ResizeObserver {
	function new(callback:ResizeObserverCallback);
	/**
		The **`disconnect()`** method of the or SVGElement targets.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserver/disconnect)
	**/
	function disconnect():Void;
	/**
		The **`observe()`** method of the ```js-nolint observe(target) observe(target, options) ``` - `target` - : A reference to an Element or SVGElement to be observed.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserver/observe)
	**/
	function observe(target:js.html.DOMElement, ?options:ResizeObserverOptions):Void;
	/**
		The **`unobserve()`** method of the ```js-nolint unobserve(target) ``` - `target` - : A reference to an Element or SVGElement to be unobserved.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserver/unobserve)
	**/
	function unobserve(target:js.html.DOMElement):Void;
	static var prototype : ResizeObserver;
}