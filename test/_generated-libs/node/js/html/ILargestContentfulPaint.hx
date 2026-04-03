package js.html;

/**
	The `LargestContentfulPaint` interface provides timing information about the largest image or text paint before user input on a web page.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint)
**/
typedef ILargestContentfulPaint = {
	/**
		The **`element`** read-only property of the LargestContentfulPaint interface returns an object representing the Element that is the largest contentful paint.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/element)
	**/
	final element : Null<js.html.DOMElement>;
	/**
		The **`id`** read-only property of the LargestContentfulPaint interface returns the ID of the element that is the largest contentful paint.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/id)
	**/
	final id : String;
	/**
		The **`loadTime`** read-only property of the LargestContentfulPaint interface returns the time that the element was loaded.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/loadTime)
	**/
	final loadTime : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/renderTime)
	**/
	final renderTime : Float;
	/**
		The **`size`** read-only property of the LargestContentfulPaint interface returns the intrinsic size of the element that is the largest contentful paint.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/size)
	**/
	final size : Float;
	/**
		The **`url`** read-only property of the LargestContentfulPaint interface returns the request URL of the element, if the element is an image.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/url)
	**/
	final url : String;
	/**
		The **`toJSON()`** method of the LargestContentfulPaint interface is a Serialization; it returns a JSON representation of the LargestContentfulPaint object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint/toJSON)
	**/
	function toJSON():Dynamic;
	/**
		The read-only **`duration`** property returns a DOMHighResTimeStamp that is the duration of the PerformanceEntry.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/duration)
	**/
	final duration : Float;
	/**
		The read-only **`entryType`** property returns a string representing the type of performance metric that this entry represents.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/entryType)
	**/
	final entryType : String;
	/**
		The read-only **`name`** property of the PerformanceEntry interface is a string representing the name for a performance entry.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/name)
	**/
	final name : String;
	/**
		The read-only **`startTime`** property returns the first DOMHighResTimeStamp recorded for this PerformanceEntry.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/startTime)
	**/
	final startTime : Float;
};