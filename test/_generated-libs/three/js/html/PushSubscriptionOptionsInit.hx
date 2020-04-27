package js.html;
extern interface PushSubscriptionOptionsInit {
	@:optional
	var applicationServerKey : haxe.extern.EitherType<String, haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.ArrayBufferView>>;
	@:optional
	var userVisibleOnly : Bool;
}