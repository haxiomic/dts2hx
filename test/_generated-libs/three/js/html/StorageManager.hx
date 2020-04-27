package js.html;
@:native("StorageManager") @tsInterface extern class StorageManager {
	function new();
	function estimate():js.lib.Promise<StorageEstimate>;
	function persist():js.lib.Promise<Bool>;
	function persisted():js.lib.Promise<Bool>;
	static var prototype : StorageManager;
}