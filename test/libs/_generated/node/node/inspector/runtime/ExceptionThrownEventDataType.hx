package node.inspector.runtime;
extern interface ExceptionThrownEventDataType {
	/**
		Timestamp of the exception.
	**/
	var timestamp : Float;
	var exceptionDetails : ExceptionDetails;
}