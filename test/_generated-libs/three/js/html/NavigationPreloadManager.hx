package js.html;
@:native("NavigationPreloadManager") @tsInterface extern class NavigationPreloadManager {
	function new();
	function disable():js.lib.Promise<Void>;
	function enable():js.lib.Promise<Void>;
	function getState():js.lib.Promise<NavigationPreloadState>;
	function setHeaderValue(value:String):js.lib.Promise<Void>;
	static var prototype : NavigationPreloadManager;
}