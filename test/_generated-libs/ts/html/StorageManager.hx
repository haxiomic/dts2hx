package ts.html;
@:native("StorageManager") extern class StorageManager {
	function new();
	function estimate():ts.lib.Promise<StorageEstimate>;
	function persist():ts.lib.Promise<Bool>;
	function persisted():ts.lib.Promise<Bool>;
	static var prototype : StorageManager;
}