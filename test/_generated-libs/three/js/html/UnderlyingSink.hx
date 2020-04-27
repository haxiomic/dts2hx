package js.html;
extern typedef UnderlyingSink<W> = { @:optional
	var abort : WritableStreamErrorCallback; @:optional
	var close : WritableStreamDefaultControllerCloseCallback; @:optional
	var start : WritableStreamDefaultControllerStartCallback; @:optional
	var type : Void; @:optional
	var write : WritableStreamDefaultControllerWriteCallback<W>; };