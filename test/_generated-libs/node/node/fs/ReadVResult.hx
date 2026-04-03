package node.fs;

typedef ReadVResult<T> = {
	var bytesRead : Float;
	var buffers : T;
};