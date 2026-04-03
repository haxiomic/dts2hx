package node.inspector.runtime;

/**
	Object containing abbreviated remote object value.
**/
typedef ObjectPreview = {
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
		String representation of the object.
	**/
	@:optional
	var description : String;
	/**
		True iff some of the properties or entries of the original object did not fit.
	**/
	var overflow : Bool;
	/**
		List of the properties.
	**/
	var properties : Array<PropertyPreview>;
	/**
		List of the entries. Specified for <code>map</code> and <code>set</code> subtype values only.
	**/
	@:optional
	var entries : Array<EntryPreview>;
};