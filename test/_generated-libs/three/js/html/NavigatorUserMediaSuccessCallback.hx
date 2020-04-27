package js.html;
extern interface NavigatorUserMediaSuccessCallback {
	@:selfCall
	function call(stream:MediaStream):Void;
}