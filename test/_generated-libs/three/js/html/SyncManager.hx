package js.html;
/**
	This ServiceWorker API interface provides an interface for registering and listing sync registrations.
**/
@:native("SyncManager") @tsInterface extern class SyncManager {
	function new();
	function getTags():js.lib.Promise<std.Array<String>>;
	function register(tag:String):js.lib.Promise<Void>;
	static var prototype : SyncManager;
}