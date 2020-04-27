package node.inspector.runtime;
extern typedef ExceptionRevokedEventDataType = { /**
		Reason describing why exception was revoked.
	**/
	var reason : String; /**
		The id of revoked exception, as reported in `exceptionThrown`.
	**/
	var exceptionId : Float; };