package ts.html;
/**
	This Push API interface provides a subcription's URL endpoint and allows unsubscription from a push service.
**/
extern typedef IPushSubscription = {
	final endpoint : String;
	final expirationTime : Null<Float>;
	final options : IPushSubscriptionOptions;
	function getKey(name:String):Null<ts.lib.IArrayBuffer>;
	function toJSON():PushSubscriptionJSON;
	function unsubscribe():ts.lib.IPromise<Bool>;
};