package ts.html;
/**
	This ServiceWorker API interface provides an interface for registering and listing sync registrations.
**/
@:native("SyncManager") extern class SyncManager {
	function new();
	function getTags():ts.lib.Promise<Array<String>>;
	function register(tag:String):ts.lib.Promise<Void>;
	static var prototype : SyncManager;
}