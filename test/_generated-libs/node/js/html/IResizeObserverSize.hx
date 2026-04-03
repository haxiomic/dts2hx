package js.html;

/**
	The **`ResizeObserverSize`** interface of the Resize Observer API is used by the ResizeObserverEntry interface to access the box sizing properties of the element being observed.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverSize)
**/
typedef IResizeObserverSize = {
	/**
		The **`blockSize`** read-only property of the ResizeObserverSize interface returns the length of the observed element's border box in the block dimension.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverSize/blockSize)
	**/
	final blockSize : Float;
	/**
		The **`inlineSize`** read-only property of the ResizeObserverSize interface returns the length of the observed element's border box in the inline dimension.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverSize/inlineSize)
	**/
	final inlineSize : Float;
};