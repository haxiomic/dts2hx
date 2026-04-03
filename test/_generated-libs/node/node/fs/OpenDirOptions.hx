package node.fs;

typedef OpenDirOptions = {
	@:optional
	var encoding : global.nodejs.BufferEncoding;
	/**
		Number of directory entries that are buffered
		internally when reading from the directory. Higher values lead to better
		performance but higher memory usage.
	**/
	@:optional
	var bufferSize : Float;
	@:optional
	var recursive : Bool;
};