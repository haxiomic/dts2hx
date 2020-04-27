package node.inspector.runtime;
/**
	Mirror object referencing original JavaScript object.
**/
extern interface RemoteObject {
	/**
		Object type.
	**/
	var type : String;
	/**
		Object subtype hint. Specified for `object` type values only.
	**/
	@:optional
	var subtype : String;
	/**
		Object class (constructor) name. Specified for `object` type values only.
	**/
	@:optional
	var className : String;
	/**
		Remote object value in case of primitive values or JSON values (if it was requested).
	**/
	@:optional
	var value : Any;
	/**
		Primitive value which can not be JSON-stringified does not have `value`, but gets this
		property.
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
		Preview containing abbreviated property values. Specified for `object` type values only.
	**/
	@:optional
	var preview : ObjectPreview;
	@:optional
	var customPreview : CustomPreview;
}