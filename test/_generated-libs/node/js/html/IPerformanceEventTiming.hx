package js.html;

/**
	The `PerformanceEventTiming` interface of the Event Timing API provides insights into the latency of certain event types triggered by user interaction.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming)
**/
typedef IPerformanceEventTiming = {
	/**
		The read-only **`cancelable`** property returns the associated event's `cancelable` property, indicating whether the event can be canceled.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming/cancelable)
	**/
	final cancelable : Bool;
	/**
		The read-only **`processingEnd`** property returns the time the last event handler finished executing.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming/processingEnd)
	**/
	final processingEnd : Float;
	/**
		The read-only **`processingStart`** property returns the time at which event dispatch started.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming/processingStart)
	**/
	final processingStart : Float;
	/**
		The read-only **`target`** property returns the associated event's last `target` which is the node onto which the event was last dispatched.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming/target)
	**/
	final target : Null<js.html.Node>;
	/**
		The **`toJSON()`** method of the PerformanceEventTiming interface is a Serialization; it returns a JSON representation of the PerformanceEventTiming object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming/toJSON)
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