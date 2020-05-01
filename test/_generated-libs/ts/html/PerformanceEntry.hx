package ts.html;
/**
	Encapsulates a single performance metric that is part of the performance timeline. A performance entry can be directly created by making a performance mark or measure (for example by calling the mark() method) at an explicit point in an application. Performance entries are also created in indirect ways such as loading a resource (such as an image).
**/
@:native("PerformanceEntry") extern class PerformanceEntry {
	function new();
	final duration : Float;
	final entryType : String;
	final name : String;
	final startTime : Float;
	function toJSON():Dynamic;
	static var prototype : IPerformanceEntry;
}