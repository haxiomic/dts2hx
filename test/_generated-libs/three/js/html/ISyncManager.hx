package js.html;
/**
	This ServiceWorker API interface provides an interface for registering and listing sync registrations.
**/
extern typedef ISyncManager = {
	function getTags():js.lib.IPromise<std.Array<String>>;
	function register(tag:String):js.lib.IPromise<Void>;
};