package js.html;
extern typedef IStorageManager = {
	function estimate():js.lib.IPromise<StorageEstimate>;
	function persist():js.lib.IPromise<Bool>;
	function persisted():js.lib.IPromise<Bool>;
};