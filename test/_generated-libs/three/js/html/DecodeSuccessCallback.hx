package js.html;
extern interface DecodeSuccessCallback {
	@:selfCall
	function call(decodedData:AudioBuffer):Void;
}