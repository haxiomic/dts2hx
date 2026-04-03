package node.fs;

/**
	Valid types for path values in "fs".
**/
typedef PathLike = ts.AnyOf3<String, node.url.URL, node.buffer.Buffer<js.lib.ArrayBufferLike>>;