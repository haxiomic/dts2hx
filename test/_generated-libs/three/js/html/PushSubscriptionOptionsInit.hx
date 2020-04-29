package js.html;
extern typedef PushSubscriptionOptionsInit = {
	@:optional
	var applicationServerKey : haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.ArrayBufferView>>;
	@:optional
	var userVisibleOnly : Bool;
};