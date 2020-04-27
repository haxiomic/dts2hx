package js.html;
/**
	This Push API interface provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
**/
@:native("PushManager") @tsInterface extern class PushManager {
	function new();
	function getSubscription():js.lib.Promise<Null<PushSubscription>>;
	function permissionState(?options:PushSubscriptionOptionsInit):js.lib.Promise<String>;
	function subscribe(?options:PushSubscriptionOptionsInit):js.lib.Promise<PushSubscription>;
	static var prototype : PushManager;
	static final supportedContentEncodings : js.lib.ReadonlyArray<String>;
}