package node.fs.promises;

typedef FileReadResult<T> = {
	var bytesRead : Float;
	var buffer : T;
};