package node.net;

typedef OnReadOpts = {
	var buffer : ts.AnyOf2<js.lib.Uint8Array_<js.lib.ArrayBufferLike>, () -> js.lib.Uint8Array_<js.lib.ArrayBufferLike>>;
	/**
		This function is called for every chunk of incoming data.
		Two arguments are passed to it: the number of bytes written to buffer and a reference to buffer.
		Return false from this function to implicitly pause() the socket.
	**/
	function callback(bytesWritten:Float, buf:js.lib.Uint8Array_<js.lib.ArrayBufferLike>):Bool;
};