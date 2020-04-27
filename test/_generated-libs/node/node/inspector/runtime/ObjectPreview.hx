package node.inspector.runtime;
/**
	Object containing abbreviated remote object value.
**/
extern typedef ObjectPreview = { /**
		Object type.
	**/
	var type : String; /**
		Object subtype hint. Specified for `object` type values only.
	**/
	@:optional
	var subtype : String; /**
		String representation of the object.
	**/
	@:optional
	var description : String; /**
		True iff some of the properties or entries of the original object did not fit.
	**/
	var overflow : Bool; /**
		List of the properties.
	**/
	var properties : std.Array<PropertyPreview>; /**
		List of the entries. Specified for `map` and `set` subtype values only.
	**/
	@:optional
	var entries : std.Array<EntryPreview>; };