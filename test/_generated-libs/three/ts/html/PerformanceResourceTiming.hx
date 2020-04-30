package ts.html;
/**
	Enables retrieval and analysis of detailed network timing data regarding the loading of an application's resources. An application can use the timing metrics to determine, for example, the length of time it takes to fetch a specific resource, such as an XMLHttpRequest, <SVG>, image, or script.
**/
@:native("PerformanceResourceTiming") extern class PerformanceResourceTiming {
	function new();
	final connectEnd : Float;
	final connectStart : Float;
	final decodedBodySize : Float;
	final domainLookupEnd : Float;
	final domainLookupStart : Float;
	final encodedBodySize : Float;
	final fetchStart : Float;
	final initiatorType : String;
	final nextHopProtocol : String;
	final redirectEnd : Float;
	final redirectStart : Float;
	final requestStart : Float;
	final responseEnd : Float;
	final responseStart : Float;
	final secureConnectionStart : Float;
	final transferSize : Float;
	final workerStart : Float;
	function toJSON():Any;
	final duration : Float;
	final entryType : String;
	final name : String;
	final startTime : Float;
	static var prototype : IPerformanceResourceTiming;
}