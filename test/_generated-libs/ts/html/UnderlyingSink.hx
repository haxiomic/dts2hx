package ts.html;
extern typedef UnderlyingSink<W> = {
	@:optional
	var abort : WritableStreamErrorCallback;
	@:optional
	var close : WritableStreamDefaultControllerCloseCallback;
	@:optional
	var start : WritableStreamDefaultControllerStartCallback;
	@:optional
	var type : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	@:optional
	var write : WritableStreamDefaultControllerWriteCallback<W>;
};