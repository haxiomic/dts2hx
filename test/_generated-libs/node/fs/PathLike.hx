package node.fs;
/**
	Valid types for path values in "fs".
**/
typedef PathLike = ts.AnyOf3<String, global.IBuffer, node.url.URL>;