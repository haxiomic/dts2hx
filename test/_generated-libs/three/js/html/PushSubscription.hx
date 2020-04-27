package js.html;
/**
	This Push API interface provides a subcription's URL endpoint and allows unsubscription from a push service.
**/
@:native("PushSubscription") @tsInterface extern class PushSubscription {
	function new();
	final endpoint : String;
	final expirationTime : Null<Float>;
	final options : PushSubscriptionOptions;
	function getKey(name:String):Null<js.lib.ArrayBuffer>;
	function toJSON():PushSubscriptionJSON;
	function unsubscribe():js.lib.Promise<Bool>;
	static var prototype : PushSubscription;
}