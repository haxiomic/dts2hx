package node.inspector.runtime;

typedef GetPropertiesReturnType = {
	/**
		Object properties.
	**/
	var result : Array<PropertyDescriptor>;
	/**
		Internal object properties (only of the element itself).
	**/
	@:optional
	var internalProperties : Array<InternalPropertyDescriptor>;
	/**
		Exception details.
	**/
	@:optional
	var exceptionDetails : ExceptionDetails;
};