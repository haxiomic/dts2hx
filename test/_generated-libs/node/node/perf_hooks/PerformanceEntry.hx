package node.perf_hooks;

/**
	The constructor of this class is not exposed to users directly.
**/
@:jsRequire("perf_hooks", "PerformanceEntry") extern class PerformanceEntry {
	function new();
	/**
		The total number of milliseconds elapsed for this entry. This value will not
		be meaningful for all Performance Entry types.
	**/
	final duration : Float;
	/**
		The name of the performance entry.
	**/
	final name : String;
	/**
		The high resolution millisecond timestamp marking the starting time of the
		Performance Entry.
	**/
	final startTime : Float;
	/**
		The type of the performance entry. It may be one of:
		
		* `'node'` (Node.js only)
		* `'mark'` (available on the Web)
		* `'measure'` (available on the Web)
		* `'gc'` (Node.js only)
		* `'function'` (Node.js only)
		* `'http2'` (Node.js only)
		* `'http'` (Node.js only)
	**/
	final entryType : EntryType;
	function toJSON():Dynamic;
	static var prototype : PerformanceEntry;
}