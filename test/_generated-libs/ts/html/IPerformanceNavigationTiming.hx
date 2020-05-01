package ts.html;
/**
	Provides methods and properties to store and retrieve metrics regarding the browser's document navigation events. For example, this interface can be used to determine how much time it takes to load or unload a document.
**/
typedef IPerformanceNavigationTiming = {
	final domComplete : Float;
	final domContentLoadedEventEnd : Float;
	final domContentLoadedEventStart : Float;
	final domInteractive : Float;
	final loadEventEnd : Float;
	final loadEventStart : Float;
	final redirectCount : Float;
	final type : String;
	final unloadEventEnd : Float;
	final unloadEventStart : Float;
	function toJSON():Dynamic;
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
	final duration : Float;
	final entryType : String;
	final name : String;
	final startTime : Float;
};