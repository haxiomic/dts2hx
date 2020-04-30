package ts.html;
extern typedef PushSubscriptionOptionsInit = {
	@:optional
	var applicationServerKey : haxe.extern.EitherType<String, haxe.extern.EitherType<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>>;
	@:optional
	var userVisibleOnly : Bool;
};