package ts.html;
/**
	This Push API interface provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
**/
@:native("PushManager") extern class PushManager {
	function new();
	function getSubscription():ts.lib.Promise<Null<PushSubscription>>;
	function permissionState(?options:PushSubscriptionOptionsInit):ts.lib.Promise<PermissionState>;
	function subscribe(?options:PushSubscriptionOptionsInit):ts.lib.Promise<PushSubscription>;
	static var prototype : PushManager;
	static final supportedContentEncodings : ts.lib.ReadonlyArray<String>;
}