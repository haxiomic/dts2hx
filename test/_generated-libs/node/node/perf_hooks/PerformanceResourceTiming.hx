package node.perf_hooks;

/**
	Provides detailed network timing data regarding the loading of an application's resources.
	
	The constructor of this class is not exposed to users directly.
**/
@:jsRequire("perf_hooks", "PerformanceResourceTiming") extern class PerformanceResourceTiming extends PerformanceEntry {
	function new();
	/**
		The high resolution millisecond timestamp at immediately before dispatching the `fetch`
		request. If the resource is not intercepted by a worker the property will always return 0.
	**/
	final workerStart : Float;
	/**
		The high resolution millisecond timestamp that represents the start time of the fetch which
		initiates the redirect.
	**/
	final redirectStart : Float;
	/**
		The high resolution millisecond timestamp that will be created immediately after receiving
		the last byte of the response of the last redirect.
	**/
	final redirectEnd : Float;
	/**
		The high resolution millisecond timestamp immediately before the Node.js starts to fetch the resource.
	**/
	final fetchStart : Float;
	/**
		The high resolution millisecond timestamp immediately before the Node.js starts the domain name lookup
		for the resource.
	**/
	final domainLookupStart : Float;
	/**
		The high resolution millisecond timestamp representing the time immediately after the Node.js finished
		the domain name lookup for the resource.
	**/
	final domainLookupEnd : Float;
	/**
		The high resolution millisecond timestamp representing the time immediately before Node.js starts to
		establish the connection to the server to retrieve the resource.
	**/
	final connectStart : Float;
	/**
		The high resolution millisecond timestamp representing the time immediately after Node.js finishes
		establishing the connection to the server to retrieve the resource.
	**/
	final connectEnd : Float;
	/**
		The high resolution millisecond timestamp representing the time immediately before Node.js starts the
		handshake process to secure the current connection.
	**/
	final secureConnectionStart : Float;
	/**
		The high resolution millisecond timestamp representing the time immediately before Node.js receives the
		first byte of the response from the server.
	**/
	final requestStart : Float;
	/**
		The high resolution millisecond timestamp representing the time immediately after Node.js receives the
		last byte of the resource or immediately before the transport connection is closed, whichever comes first.
	**/
	final responseEnd : Float;
	/**
		A number representing the size (in octets) of the fetched resource. The size includes the response header
		fields plus the response payload body.
	**/
	final transferSize : Float;
	/**
		A number representing the size (in octets) received from the fetch (HTTP or cache), of the payload body, before
		removing any applied content-codings.
	**/
	final encodedBodySize : Float;
	/**
		A number representing the size (in octets) received from the fetch (HTTP or cache), of the message body, after
		removing any applied content-codings.
	**/
	final decodedBodySize : Float;
	static var prototype : PerformanceResourceTiming;
}