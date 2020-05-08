package ts.html;
@:native("NavigationPreloadManager") extern class NavigationPreloadManager {
	function new();
	function disable():ts.lib.Promise<Void>;
	function enable():ts.lib.Promise<Void>;
	function getState():ts.lib.Promise<NavigationPreloadState>;
	function setHeaderValue(value:String):ts.lib.Promise<Void>;
	static var prototype : NavigationPreloadManager;
}