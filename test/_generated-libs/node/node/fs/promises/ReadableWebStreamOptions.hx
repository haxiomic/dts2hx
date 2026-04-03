package node.fs.promises;

typedef ReadableWebStreamOptions = {
	/**
		Whether to open a normal or a `'bytes'` stream.
	**/
	@:optional
	var type : String;
};