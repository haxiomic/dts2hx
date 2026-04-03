package js.html;

/**
	The **`WebTransportDatagramDuplexStream`** interface of the WebTransport API represents a duplex stream that can be used for unreliable transport of datagrams between client and server.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream)
**/
typedef IWebTransportDatagramDuplexStream = {
	/**
		The **`incomingHighWaterMark`** property of the WebTransportDatagramDuplexStream interface gets or sets the high water mark for incoming chunks of data — this is the maximum size, in chunks, that the incoming ReadableStream's internal queue can reach before it is considered full.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/incomingHighWaterMark)
	**/
	var incomingHighWaterMark : Float;
	/**
		The **`incomingMaxAge`** property of the WebTransportDatagramDuplexStream interface gets or sets the maximum age for incoming datagrams, in milliseconds.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/incomingMaxAge)
	**/
	var incomingMaxAge : Null<Float>;
	/**
		The **`maxDatagramSize`** read-only property of the WebTransportDatagramDuplexStream interface returns the maximum allowable size of outgoing datagrams, in bytes, that can be written to WebTransportDatagramDuplexStream.writable.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/maxDatagramSize)
	**/
	final maxDatagramSize : Float;
	/**
		The **`outgoingHighWaterMark`** property of the WebTransportDatagramDuplexStream interface gets or sets the high water mark for outgoing chunks of data — this is the maximum size, in chunks, that the outgoing WritableStream's internal queue can reach before it is considered full.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/outgoingHighWaterMark)
	**/
	var outgoingHighWaterMark : Float;
	/**
		The **`outgoingMaxAge`** property of the WebTransportDatagramDuplexStream interface gets or sets the maximum age for outgoing datagrams, in milliseconds.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/outgoingMaxAge)
	**/
	var outgoingMaxAge : Null<Float>;
	/**
		The **`readable`** read-only property of the WebTransportDatagramDuplexStream interface returns a ReadableStream instance that can be used to unreliably read incoming datagrams from the stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/readable)
	**/
	final readable : ReadableStream<Dynamic>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream/writable)
	**/
	final writable : WritableStream<Dynamic>;
};