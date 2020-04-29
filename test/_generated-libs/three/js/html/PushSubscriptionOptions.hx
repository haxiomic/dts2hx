package js.html;
@:native("PushSubscriptionOptions") extern class PushSubscriptionOptions {
	function new();
	final applicationServerKey : Null<js.lib.IArrayBuffer>;
	final userVisibleOnly : Bool;
	static var prototype : IPushSubscriptionOptions;
}