package node.inspector.runtime;
extern interface GetPropertiesReturnType {
	/**
		Object properties.
	**/
	var result : std.Array<PropertyDescriptor>;
	/**
		Internal object properties (only of the element itself).
	**/
	@:optional
	var internalProperties : std.Array<InternalPropertyDescriptor>;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : ExceptionDetails;
}