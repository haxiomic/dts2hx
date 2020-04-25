package node.inspector.runtime;
extern interface GetPropertiesParameterType {
	/**
		Identifier of the object to return properties for.
	**/
	var objectId : String;
	/**
		If true, returns properties belonging only to the element itself, not to its prototype
		chain.
	**/
	@:optional
	var ownProperties : Null<Bool>;
	/**
		If true, returns accessor properties (with getter/setter) only; internal properties are not
		returned either.
	**/
	@:optional
	var accessorPropertiesOnly : Null<Bool>;
	/**
		Whether preview should be generated for the results.
	**/
	@:optional
	var generatePreview : Null<Bool>;
}