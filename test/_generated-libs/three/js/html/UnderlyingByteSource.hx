package js.html;
extern interface UnderlyingByteSource {
	@:optional
	var autoAllocateChunkSize : Float;
	@:optional
	var cancel : ReadableStreamErrorCallback;
	@:optional
	var pull : ReadableByteStreamControllerCallback;
	@:optional
	var start : ReadableByteStreamControllerCallback;
	var type : String;
}