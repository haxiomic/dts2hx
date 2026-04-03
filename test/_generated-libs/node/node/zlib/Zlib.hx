package node.zlib;

typedef Zlib = {
	final bytesRead : Float;
	final bytesWritten : Float;
	@:optional
	var shell : ts.AnyOf2<String, Bool>;
	function close(?callback:() -> Void):Void;
	@:overload(function(?callback:() -> Void):Void { })
	function flush(?kind:Float, ?callback:() -> Void):Void;
};