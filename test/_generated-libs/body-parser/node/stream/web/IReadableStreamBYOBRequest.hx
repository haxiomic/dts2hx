package node.stream.web;

/**
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBRequest)
**/
typedef IReadableStreamBYOBRequest = {
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBRequest/view)
	**/
	final view : Null<js.lib.ArrayBufferView_<js.lib.ArrayBufferLike>>;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBRequest/respond)
	**/
	function respond(bytesWritten:Float):Void;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBRequest/respondWithNewView)
	**/
	function respondWithNewView(view:js.lib.ArrayBufferView_<js.lib.ArrayBufferLike>):Void;
};