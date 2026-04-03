package node.buffer;

typedef WithImplicitCoercion<T> = ts.AnyOf3<{
	function valueOf():T;
}, Dynamic, T>;