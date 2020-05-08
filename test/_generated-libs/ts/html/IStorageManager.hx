package ts.html;
typedef IStorageManager = {
	function estimate():ts.lib.Promise<StorageEstimate>;
	function persist():ts.lib.Promise<Bool>;
	function persisted():ts.lib.Promise<Bool>;
};