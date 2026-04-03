package node.inspector.runtime;

typedef GetPropertiesParameterType = {
	/**
		Identifier of the object to return properties for.
	**/
	var objectId : String;
	/**
		If true, returns properties belonging only to the element itself, not to its prototype chain.
	**/
	@:optional
	var ownProperties : Bool;
	/**
		If true, returns accessor properties (with getter/setter) only; internal properties are not returned either.
	**/
	@:optional
	var accessorPropertiesOnly : Bool;
	/**
		Whether preview should be generated for the results.
	**/
	@:optional
	var generatePreview : Bool;
};