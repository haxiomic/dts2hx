package ts.html;
extern typedef INavigationPreloadManager = {
	function disable():ts.lib.IPromise<Void>;
	function enable():ts.lib.IPromise<Void>;
	function getState():ts.lib.IPromise<NavigationPreloadState>;
	function setHeaderValue(value:String):ts.lib.IPromise<Void>;
};