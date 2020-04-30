package ts.html;
@:native("StorageManager") extern class StorageManager {
	function new();
	function estimate():ts.lib.IPromise<StorageEstimate>;
	function persist():ts.lib.IPromise<Bool>;
	function persisted():ts.lib.IPromise<Bool>;
	static var prototype : IStorageManager;
}