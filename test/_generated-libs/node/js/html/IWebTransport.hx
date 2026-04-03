package js.html;

/**
	The **`WebTransport`** interface of the WebTransport API provides functionality to enable a user agent to connect to an HTTP/3 server, initiate reliable and unreliable transport in either or both directions, and close the connection once it is no longer needed.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransport)
**/
typedef IWebTransport = {
	/**
		The **`closed`** read-only property of the WebTransport interface returns a promise that resolves when the transport is closed.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransport/closed)
	**/
	final closed : js.lib.Promise<WebTransportCloseInfo>;
	/**
		The **`datagrams`** read-only property of the WebTransport interface returns a WebTransportDatagramDuplexStream instance that can be used to send and receive datagrams — unreliable data transmission.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransport/datagrams)
	**/
	final datagrams : WebTransportDatagramDuplexStream;
	/**
		The **`incomingBidirectionalStreams`** read-only property of the WebTransport interface represents one or more bidirectional streams opened by the server.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransport/incomingBidirectionalStreams)
	**/
	final incomingBidirectionalStreams : ReadableStream<Dynamic>;
	/**
		The **`incomingUnidirectionalStreams`** read-only property of the WebTransport interface represents one or more unidirectional streams opened by the server.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransport/incomingUnidirectionalStreams)
	**/
	final incomingUnidirectionalStreams : ReadableStream<Dynamic>;
	/**
		The **`ready`** read-only property of the WebTransport interface returns a promise that resolves when the transport is ready to use.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransport/ready)
	**/
	final ready : js.lib.Promise<ts.Undefined>;
	/**
		The **`close()`** method of the WebTransport interface closes an ongoing WebTransport session.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransport/close)
	**/
	function close(?closeInfo:WebTransportCloseInfo):Void;
	/**
		The **`createBidirectionalStream()`** method of the WebTransport interface asynchronously opens and returns a bidirectional stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransport/createBidirectionalStream)
	**/
	function createBidirectionalStream(?options:WebTransportSendStreamOptions):js.lib.Promise<WebTransportBidirectionalStream>;
	/**
		The **`createUnidirectionalStream()`** method of the WebTransport interface asynchronously opens a unidirectional stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransport/createUnidirectionalStream)
	**/
	function createUnidirectionalStream(?options:WebTransportSendStreamOptions):js.lib.Promise<WritableStream<Dynamic>>;
};