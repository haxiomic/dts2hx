package js.html;
extern interface NotificationPermissionCallback {
	@:selfCall
	function call(permission:String):Void;
}