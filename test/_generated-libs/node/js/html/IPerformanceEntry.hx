package js.html;

/**
	The **`PerformanceEntry`** object encapsulates a single performance metric that is part of the browser's performance timeline.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEntry)
	
	`PerformanceEntry` is a global reference for `import { PerformanceEntry } from 'node:node:perf_hooks'`
**/
typedef IPerformanceEntry = {
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
	/**
		The **`toJSON()`** method is a Serialization; it returns a JSON representation of the PerformanceEntry object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEntry/toJSON)
	**/
	function toJSON():Dynamic;
};