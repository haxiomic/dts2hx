package js.html;
/**
	This Push API interface provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
**/
@:native("PushManager") extern class PushManager {
	function new();
	function getSubscription():js.lib.IPromise<Null<IPushSubscription>>;
	function permissionState(?options:PushSubscriptionOptionsInit):js.lib.IPromise<String>;
	function subscribe(?options:PushSubscriptionOptionsInit):js.lib.IPromise<IPushSubscription>;
	static var prototype : IPushManager;
	static final supportedContentEncodings : js.lib.ReadonlyArray<String>;
}