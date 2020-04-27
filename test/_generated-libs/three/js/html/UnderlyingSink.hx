package js.html;
extern interface UnderlyingSink<W> {
	@:optional
	var abort : WritableStreamErrorCallback;
	@:optional
	var close : WritableStreamDefaultControllerCloseCallback;
	@:optional
	var start : WritableStreamDefaultControllerStartCallback;
	@:optional
	var type : Void;
	@:optional
	var write : WritableStreamDefaultControllerWriteCallback<W>;
}