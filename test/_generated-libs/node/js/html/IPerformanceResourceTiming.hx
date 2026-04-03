package js.html;

/**
	The **`PerformanceResourceTiming`** interface enables retrieval and analysis of detailed network timing data regarding the loading of an application's resources.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming)
	
	`PerformanceResourceTiming` is a global reference for `import { PerformanceResourceTiming } from 'node:node:perf_hooks'`
**/
typedef IPerformanceResourceTiming = {
	/**
		The **`connectEnd`** read-only property returns the DOMHighResTimeStamp immediately after the browser finishes establishing the connection to the server to retrieve the resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/connectEnd)
	**/
	final connectEnd : Float;
	/**
		The **`connectStart`** read-only property returns the DOMHighResTimeStamp immediately before the user agent starts establishing the connection to the server to retrieve the resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/connectStart)
	**/
	final connectStart : Float;
	/**
		The **`decodedBodySize`** read-only property returns the size (in octets) received from the fetch (HTTP or cache) of the message body after removing any applied content encoding (like gzip or Brotli).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/decodedBodySize)
	**/
	final decodedBodySize : Float;
	/**
		The **`domainLookupEnd`** read-only property returns the DOMHighResTimeStamp immediately after the browser finishes the domain-name lookup for the resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/domainLookupEnd)
	**/
	final domainLookupEnd : Float;
	/**
		The **`domainLookupStart`** read-only property returns the DOMHighResTimeStamp immediately before the browser starts the domain name lookup for the resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/domainLookupStart)
	**/
	final domainLookupStart : Float;
	/**
		The **`encodedBodySize`** read-only property represents the size (in octets) received from the fetch (HTTP or cache) of the payload body before removing any applied content encodings (like gzip or Brotli).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/encodedBodySize)
	**/
	final encodedBodySize : Float;
	/**
		The **`fetchStart`** read-only property represents a DOMHighResTimeStamp immediately before the browser starts to fetch the resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/fetchStart)
	**/
	final fetchStart : Float;
	/**
		The **`initiatorType`** read-only property is a string representing web platform feature that initiated the resource load.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/initiatorType)
	**/
	final initiatorType : String;
	/**
		The **`nextHopProtocol`** read-only property is a string representing the network protocol used to fetch the resource, as identified by the ALPN Protocol ID (RFC7301).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/nextHopProtocol)
	**/
	final nextHopProtocol : String;
	/**
		The **`redirectEnd`** read-only property returns a DOMHighResTimeStamp immediately after receiving the last byte of the response of the last redirect.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/redirectEnd)
	**/
	final redirectEnd : Float;
	/**
		The **`redirectStart`** read-only property returns a DOMHighResTimeStamp representing the start time of the fetch which that initiates the redirect.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/redirectStart)
	**/
	final redirectStart : Float;
	/**
		The **`requestStart`** read-only property returns a DOMHighResTimeStamp of the time immediately before the browser starts requesting the resource from the server, cache, or local resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/requestStart)
	**/
	final requestStart : Float;
	/**
		The **`responseEnd`** read-only property returns a DOMHighResTimeStamp immediately after the browser receives the last byte of the resource or immediately before the transport connection is closed, whichever comes first.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/responseEnd)
	**/
	final responseEnd : Float;
	/**
		The **`responseStart`** read-only property returns a DOMHighResTimeStamp immediately after the browser receives the first byte of the response from the server, cache, or local resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/responseStart)
	**/
	final responseStart : Float;
	/**
		The **`responseStatus`** read-only property represents the HTTP response status code returned when fetching the resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/responseStatus)
	**/
	final responseStatus : Float;
	/**
		The **`secureConnectionStart`** read-only property returns a DOMHighResTimeStamp immediately before the browser starts the handshake process to secure the current connection.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/secureConnectionStart)
	**/
	final secureConnectionStart : Float;
	/**
		The **`serverTiming`** read-only property returns an array of PerformanceServerTiming entries containing server timing metrics.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/serverTiming)
	**/
	final serverTiming : haxe.ds.ReadOnlyArray<js.html.PerformanceServerTiming>;
	/**
		The **`transferSize`** read-only property represents the size (in octets) of the fetched resource.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/transferSize)
	**/
	final transferSize : Float;
	/**
		The **`workerStart`** read-only property of the PerformanceResourceTiming interface returns a The `workerStart` property can have the following values: - A DOMHighResTimeStamp.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/workerStart)
	**/
	final workerStart : Float;
	/**
		The **`toJSON()`** method of the PerformanceResourceTiming interface is a Serialization; it returns a JSON representation of the PerformanceResourceTiming object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming/toJSON)
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