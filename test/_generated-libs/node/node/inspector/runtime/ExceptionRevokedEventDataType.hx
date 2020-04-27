package node.inspector.runtime;
extern interface ExceptionRevokedEventDataType {
	/**
		Reason describing why exception was revoked.
	**/
	var reason : String;
	/**
		The id of revoked exception, as reported in `exceptionThrown`.
	**/
	var exceptionId : Float;
}