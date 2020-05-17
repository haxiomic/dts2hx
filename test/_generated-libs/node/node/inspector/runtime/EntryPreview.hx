package node.inspector.runtime;

typedef EntryPreview = {
	/**
		Preview of the key. Specified for map-like collection entries.
	**/
	@:optional
	var key : ObjectPreview;
	/**
		Preview of the value.
	**/
	var value : ObjectPreview;
};