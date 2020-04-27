package node.inspector.runtime;
extern typedef RunScriptReturnType = { /**
		Run result.
	**/
	var result : RemoteObject; /**
		Exception details.
	**/
	@:optional
	var exceptionDetails : ExceptionDetails; };