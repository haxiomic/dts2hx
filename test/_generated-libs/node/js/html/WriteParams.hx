package js.html;

typedef WriteParams = {
	@:optional
	var data : ts.AnyOf4<String, js.lib.ArrayBuffer, js.lib.ArrayBufferView_<js.lib.ArrayBuffer>, js.html.Blob>;
	@:optional
	var position : Float;
	@:optional
	var size : Float;
	var type : WriteCommandType;
};