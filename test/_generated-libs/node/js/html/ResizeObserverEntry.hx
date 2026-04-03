package js.html;

/**
	The **`ResizeObserverEntry`** interface represents the object passed to the ResizeObserver.ResizeObserver constructor's callback function, which allows you to access the new dimensions of the Element or SVGElement being observed.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry)
**/
@:native("ResizeObserverEntry") extern class ResizeObserverEntry {
	function new();
	/**
		The **`borderBoxSize`** read-only property of the ResizeObserverEntry interface returns an array containing the new border box size of the observed element when the callback is run.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/borderBoxSize)
	**/
	final borderBoxSize : haxe.ds.ReadOnlyArray<ResizeObserverSize>;
	/**
		The **`contentBoxSize`** read-only property of the ResizeObserverEntry interface returns an array containing the new content box size of the observed element when the callback is run.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/contentBoxSize)
	**/
	final contentBoxSize : haxe.ds.ReadOnlyArray<ResizeObserverSize>;
	/**
		The `contentRect` read-only property of the object containing the new size of the observed element when the callback is run.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/contentRect)
	**/
	final contentRect : js.html.DOMRectReadOnly;
	/**
		The **`devicePixelContentBoxSize`** read-only property of the ResizeObserverEntry interface returns an array containing the size in device pixels of the observed element when the callback is run.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/devicePixelContentBoxSize)
	**/
	final devicePixelContentBoxSize : haxe.ds.ReadOnlyArray<ResizeObserverSize>;
	/**
		The **`target`** read-only property of the An Element or SVGElement representing the element being observed.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry/target)
	**/
	final target : js.html.DOMElement;
	static var prototype : ResizeObserverEntry;
}