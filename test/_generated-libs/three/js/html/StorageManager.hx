package js.html;
@:native("StorageManager") extern class StorageManager {
	function new();
	function estimate():js.lib.IPromise<StorageEstimate>;
	function persist():js.lib.IPromise<Bool>;
	function persisted():js.lib.IPromise<Bool>;
	static var prototype : IStorageManager;
}