package ts.html;
typedef IStorageManager = {
	function estimate():ts.lib.IPromise<StorageEstimate>;
	function persist():ts.lib.IPromise<Bool>;
	function persisted():ts.lib.IPromise<Bool>;
};