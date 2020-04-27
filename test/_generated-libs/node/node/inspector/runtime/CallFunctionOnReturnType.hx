package node.inspector.runtime;
extern typedef CallFunctionOnReturnType = { /**
		Call result.
	**/
	var result : RemoteObject; /**
		Exception details.
	**/
	@:optional
	var exceptionDetails : ExceptionDetails; };