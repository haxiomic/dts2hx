package ts.html;
extern typedef PushSubscriptionOptionsInit = {
	@:optional
	var applicationServerKey : ts.AnyOf3<String, ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>;
	@:optional
	var userVisibleOnly : Bool;
};