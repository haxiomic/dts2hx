package js.html;
/**
	PerformanceMark is an abstract interface for PerformanceEntry objects with an entryType of "mark". Entries of this type are created by calling performance.mark() to add a named DOMHighResTimeStamp (the mark) to the browser's performance timeline.
**/
@:native("PerformanceMark") @tsInterface extern class PerformanceMark {
	function new();
	final duration : Float;
	final entryType : String;
	final name : String;
	final startTime : Float;
	function toJSON():Any;
	static var prototype : PerformanceMark;
}