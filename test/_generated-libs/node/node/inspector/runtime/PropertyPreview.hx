package node.inspector.runtime;
extern interface PropertyPreview {
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
		Object subtype hint. Specified for `object` type values only.
	**/
	@:optional
	var subtype : String;
}