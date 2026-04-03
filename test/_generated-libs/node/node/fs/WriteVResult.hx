package node.fs;

typedef WriteVResult<T> = {
	var bytesWritten : Float;
	var buffers : T;
};