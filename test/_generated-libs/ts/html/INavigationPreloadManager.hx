package ts.html;
typedef INavigationPreloadManager = {
	function disable():ts.lib.Promise<Void>;
	function enable():ts.lib.Promise<Void>;
	function getState():ts.lib.Promise<NavigationPreloadState>;
	function setHeaderValue(value:String):ts.lib.Promise<Void>;
};