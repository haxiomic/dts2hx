package js.html;
extern typedef ReadableStreamBYOBRequest = {
	final view : js.lib.ArrayBufferView;
	function respond(bytesWritten:Float):Void;
	function respondWithNewView(view:js.lib.ArrayBufferView):Void;
};