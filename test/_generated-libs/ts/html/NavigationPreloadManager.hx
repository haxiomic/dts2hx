package ts.html;
@:native("NavigationPreloadManager") extern class NavigationPreloadManager {
	function new();
	function disable():ts.lib.IPromise<Void>;
	function enable():ts.lib.IPromise<Void>;
	function getState():ts.lib.IPromise<NavigationPreloadState>;
	function setHeaderValue(value:String):ts.lib.IPromise<Void>;
	static var prototype : INavigationPreloadManager;
}