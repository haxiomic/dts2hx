package ts.html;
/**
	This Push API interface provides a subcription's URL endpoint and allows unsubscription from a push service.
**/
@:native("PushSubscription") extern class PushSubscription {
	function new();
	final endpoint : String;
	final expirationTime : Null<Float>;
	final options : PushSubscriptionOptions;
	function getKey(name:PushEncryptionKeyName):Null<ts.lib.ArrayBuffer>;
	function toJSON():PushSubscriptionJSON;
	function unsubscribe():ts.lib.Promise<Bool>;
	static var prototype : PushSubscription;
}