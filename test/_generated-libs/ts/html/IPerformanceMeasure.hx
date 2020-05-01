package ts.html;
/**
	PerformanceMeasure is an abstract interface for PerformanceEntry objects with an entryType of "measure". Entries of this type are created by calling performance.measure() to add a named DOMHighResTimeStamp (the measure) between two marks to the browser's performance timeline.
**/
typedef IPerformanceMeasure = {
	final duration : Float;
	final entryType : String;
	final name : String;
	final startTime : Float;
	function toJSON():Dynamic;
};