package js.html;
/**
	This Push API interface provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
**/
extern typedef IPushManager = {
	function getSubscription():js.lib.IPromise<Null<IPushSubscription>>;
	function permissionState(?options:PushSubscriptionOptionsInit):js.lib.IPromise<String>;
	function subscribe(?options:PushSubscriptionOptionsInit):js.lib.IPromise<IPushSubscription>;
};