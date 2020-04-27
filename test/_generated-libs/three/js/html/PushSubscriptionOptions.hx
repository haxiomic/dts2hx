package js.html;
@:native("PushSubscriptionOptions") @tsInterface extern class PushSubscriptionOptions {
	function new();
	final applicationServerKey : Null<js.lib.ArrayBuffer>;
	final userVisibleOnly : Bool;
	static var prototype : PushSubscriptionOptions;
}