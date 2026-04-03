package node.inspector.runtime;

typedef PropertyPreview = {
	/**
		Property name.
	**/
	var name : String;
	/**
		Object type. Accessor means that the property itself is an accessor property.
	**/
	var type : String;
	/**
		User-friendly property value string.
	**/
	@:optional
	var value : String;
	/**
		Nested value preview.
	**/
	@:optional
	var valuePreview : ObjectPreview;
	/**
		Object subtype hint. Specified for <code>object</code> type values only.
	**/
	@:optional
	var subtype : String;
};