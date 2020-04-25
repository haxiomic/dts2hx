package node.inspector.runtime;
extern interface EntryPreview {
	/**
		Preview of the key. Specified for map-like collection entries.
	**/
	@:optional
	var key : Null<ObjectPreview>;
	/**
		Preview of the value.
	**/
	var value : ObjectPreview;
}