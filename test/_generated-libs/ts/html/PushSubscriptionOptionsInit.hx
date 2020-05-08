package ts.html;
typedef PushSubscriptionOptionsInit = {
	@:optional
	var applicationServerKey : ts.AnyOf3<String, ts.lib.ArrayBuffer, ts.lib.ArrayBufferView>;
	@:optional
	var userVisibleOnly : Bool;
};