package node.inspector.runtime;

typedef ExceptionRevokedEventDataType = {
	/**
		Reason describing why exception was revoked.
	**/
	var reason : String;
	/**
		The id of revoked exception, as reported in <code>exceptionThrown</code>.
	**/
	var exceptionId : Float;
};