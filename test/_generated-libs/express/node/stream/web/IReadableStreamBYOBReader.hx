package node.stream.web;

/**
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader)
**/
typedef IReadableStreamBYOBReader = {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader/read)
	**/
	function read<T:(js.lib.ArrayBufferView_<js.lib.ArrayBufferLike>)>(view:T, ?options:{ @:optional var min : Float; }):js.lib.Promise<ReadableStreamReadResult<T>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader/releaseLock)
	**/
	function releaseLock():Void;
	final closed : js.lib.Promise<ts.Undefined>;
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
};