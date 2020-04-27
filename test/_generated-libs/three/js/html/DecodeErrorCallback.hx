package js.html;
extern interface DecodeErrorCallback {
	@:selfCall
	function call(error:DOMException):Void;
}