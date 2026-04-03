package js.html;

/**
	The **`RTCError`** interface describes an error which has occurred while handling WebRTC operations.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCError)
**/
typedef IRTCError = {
	/**
		The RTCError interface's read-only **`errorDetail`** property is a string indicating the WebRTC-specific error code that occurred.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCError/errorDetail)
	**/
	final errorDetail : RTCErrorDetailType;
	/**
		The RTCError read-only property **`receivedAlert`** specifies the fatal DTLS error which resulted in an alert being received from the remote peer.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCError/receivedAlert)
	**/
	final receivedAlert : Null<Float>;
	/**
		The read-only **`sctpCauseCode`** property in an why the SCTP negotiation failed, if the `RTCError` represents an SCTP error.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCError/sctpCauseCode)
	**/
	final sctpCauseCode : Null<Float>;
	/**
		The RTCError interface's read-only property **`sdpLineNumber`** specifies the line number within the An unsigned integer value indicating the line within the SDP at which the syntax error described by the `RTCError` object occurred.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCError/sdpLineNumber)
	**/
	final sdpLineNumber : Null<Float>;
	/**
		The read-only **`sentAlert`** property in an while sending data to the remote peer, if the error represents an outbound DTLS error.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCError/sentAlert)
	**/
	final sentAlert : Null<Float>;
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