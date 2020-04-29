package js.html;
extern typedef INavigationPreloadManager = {
	function disable():js.lib.IPromise<Void>;
	function enable():js.lib.IPromise<Void>;
	function getState():js.lib.IPromise<NavigationPreloadState>;
	function setHeaderValue(value:String):js.lib.IPromise<Void>;
};