package js.html;

/**
	The **`WebTransportError`** interface of the WebTransport API represents an error related to the API, which can arise from server errors, network connection problems, or client-initiated abort operations (for example, arising from a WritableStream.abort() call).
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportError)
**/
typedef IWebTransportError = {
	/**
		The **`source`** read-only property of the WebTransportError interface returns an enumerated value indicating the source of the error.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportError/source)
	**/
	final source : WebTransportErrorSource;
	/**
		The **`streamErrorCode`** read-only property of the WebTransportError interface returns a number in the range 0-255 indicating the application protocol error code for this error, or `null` if one is not available.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportError/streamErrorCode)
	**/
	final streamErrorCode : Null<Float>;
	/**
		The **`code`** read-only property of the DOMException interface returns one of the legacy error code constants, or `0` if none match.
	**/
	final code : Float;
	/**
		The **`message`** read-only property of the a message or description associated with the given error name.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMException/message)
	**/
	final message : String;
	/**
		The **`name`** read-only property of the one of the strings associated with an error name.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMException/name)
	**/
	final name : String;
	final INDEX_SIZE_ERR : Int;
	final DOMSTRING_SIZE_ERR : Int;
	final HIERARCHY_REQUEST_ERR : Int;
	final WRONG_DOCUMENT_ERR : Int;
	final INVALID_CHARACTER_ERR : Int;
	final NO_DATA_ALLOWED_ERR : Int;
	final NO_MODIFICATION_ALLOWED_ERR : Int;
	final NOT_FOUND_ERR : Int;
	final NOT_SUPPORTED_ERR : Int;
	final INUSE_ATTRIBUTE_ERR : Int;
	final INVALID_STATE_ERR : Int;
	final SYNTAX_ERR : Int;
	final INVALID_MODIFICATION_ERR : Int;
	final NAMESPACE_ERR : Int;
	final INVALID_ACCESS_ERR : Int;
	final VALIDATION_ERR : Int;
	final TYPE_MISMATCH_ERR : Int;
	final SECURITY_ERR : Int;
	final NETWORK_ERR : Int;
	final ABORT_ERR : Int;
	final URL_MISMATCH_ERR : Int;
	final QUOTA_EXCEEDED_ERR : Int;
	final TIMEOUT_ERR : Int;
	final INVALID_NODE_TYPE_ERR : Int;
	final DATA_CLONE_ERR : Int;
	@:optional
	var stack : String;
};