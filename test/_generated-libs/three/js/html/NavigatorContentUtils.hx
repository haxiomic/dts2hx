package js.html;
extern interface NavigatorContentUtils {
	function registerProtocolHandler(scheme:String, url:String, title:String):Void;
	function unregisterProtocolHandler(scheme:String, url:String):Void;
}