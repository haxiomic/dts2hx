package ts.html;
/**
	This ServiceWorker API interface provides an interface for registering and listing sync registrations.
**/
typedef ISyncManager = {
	function getTags():ts.lib.Promise<Array<String>>;
	function register(tag:String):ts.lib.Promise<Void>;
};