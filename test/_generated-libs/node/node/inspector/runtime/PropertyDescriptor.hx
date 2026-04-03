package node.inspector.runtime;

/**
	Object property descriptor.
**/
typedef PropertyDescriptor = {
	/**
		Property name or symbol description.
	**/
	var name : String;
	/**
		The value associated with the property.
	**/
	@:optional
	var value : RemoteObject;
	/**
		True if the value associated with the property may be changed (data descriptors only).
	**/
	@:optional
	var writable : Bool;
	/**
		A function which serves as a getter for the property, or <code>undefined</code> if there is no getter (accessor descriptors only).
	**/
	@:optional
	var get : RemoteObject;
	/**
		A function which serves as a setter for the property, or <code>undefined</code> if there is no setter (accessor descriptors only).
	**/
	@:optional
	var set : RemoteObject;
	/**
		True if the type of this property descriptor may be changed and if the property may be deleted from the corresponding object.
	**/
	var configurable : Bool;
	/**
		True if this property shows up during enumeration of the properties on the corresponding object.
	**/
	var enumerable : Bool;
	/**
		True if the result was thrown during the evaluation.
	**/
	@:optional
	var wasThrown : Bool;
	/**
		True if the property is owned for the object.
	**/
	@:optional
	var isOwn : Bool;
	/**
		Property symbol object, if the property is of the <code>symbol</code> type.
	**/
	@:optional
	var symbol : RemoteObject;
};