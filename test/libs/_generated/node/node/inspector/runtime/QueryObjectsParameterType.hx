package node.inspector.runtime;
extern interface QueryObjectsParameterType {
	/**
		Identifier of the prototype to return objects for.
	**/
	var prototypeObjectId : String;
	/**
		Symbolic group name that can be used to release the results.
	**/
	@:optional
	var objectGroup : Null<String>;
}