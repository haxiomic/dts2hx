package node.zlib;

typedef BrotliOptions = {
	@:optional
	var flush : Float;
	@:optional
	var finishFlush : Float;
	@:optional
	var chunkSize : Float;
	@:optional
	var params : Array<ts.AnyOf2<Float, Bool>>;
	/**
		Limits output size when using [convenience methods](https://nodejs.org/docs/latest-v20.x/api/zlib.html#convenience-methods).
	**/
	@:optional
	var maxOutputLength : Float;
};