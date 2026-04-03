package node.inspector.runtime;

/**
	Mirror object referencing original JavaScript object.
**/
typedef RemoteObject = {
	/**
		Object type.
	**/
	var type : String;
	/**
		Object subtype hint. Specified for <code>object</code> type values only.
	**/
	@:optional
	var subtype : String;
	/**
		Object class (constructor) name. Specified for <code>object</code> type values only.
	**/
	@:optional
	var className : String;
	/**
		Remote object value in case of primitive values or JSON values (if it was requested).
	**/
	@:optional
	var value : Dynamic;
	/**
		Primitive value which can not be JSON-stringified does not have <code>value</code>, but gets this property.
	**/
	@:optional
	var unserializableValue : String;
	/**
		String representation of the object.
	**/
	@:optional
	var description : String;
	/**
		Unique object identifier (for non-primitive values).
	**/
	@:optional
	var objectId : String;
	/**
		Preview containing abbreviated property values. Specified for <code>object</code> type values only.
	**/
	@:optional
	var preview : ObjectPreview;
	@:optional
	var customPreview : CustomPreview;
};