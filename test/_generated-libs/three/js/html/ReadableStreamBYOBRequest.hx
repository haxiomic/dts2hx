package js.html;
extern interface ReadableStreamBYOBRequest {
	final view : js.lib.ArrayBufferView;
	function respond(bytesWritten:Float):Void;
	function respondWithNewView(view:js.lib.ArrayBufferView):Void;
}