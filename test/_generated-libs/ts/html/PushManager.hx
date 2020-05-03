package ts.html;
/**
	This Push API interface provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
**/
@:native("PushManager") extern class PushManager {
	function new();
	function getSubscription():ts.lib.IPromise<Null<IPushSubscription>>;
	function permissionState(?options:PushSubscriptionOptionsInit):ts.lib.IPromise<PermissionState>;
	function subscribe(?options:PushSubscriptionOptionsInit):ts.lib.IPromise<IPushSubscription>;
	static var prototype : IPushManager;
	static final supportedContentEncodings : ts.lib.ReadonlyArray<String>;
}