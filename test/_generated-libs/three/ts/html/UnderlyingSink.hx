package ts.html;
extern typedef UnderlyingSink<W> = {
	@:optional
	var abort : WritableStreamErrorCallback;
	@:optional
	var close : WritableStreamDefaultControllerCloseCallback;
	@:optional
	var start : WritableStreamDefaultControllerStartCallback;
	@:optional
	var type : Any;
	@:optional
	var write : WritableStreamDefaultControllerWriteCallback<W>;
};