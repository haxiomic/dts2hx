package js.html;

/**
	**`PerformanceMark`** is an interface for PerformanceEntry objects with an PerformanceEntry.entryType of `'mark'`.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceMark)
	
	`PerformanceMark` is a global reference for `import { PerformanceMark } from 'node:node:perf_hooks'`
**/
typedef IPerformanceMark = {
	/**
		The read-only **`detail`** property returns arbitrary metadata that was included in the mark upon construction (either when using Performance.mark or the PerformanceMark.PerformanceMark constructor).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceMark/detail)
	**/
	final detail : Dynamic;
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