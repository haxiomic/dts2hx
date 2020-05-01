package ts.html;
typedef IAudioWorklet = {
	function addModule(moduleURL:String, ?options:WorkletOptions):ts.lib.IPromise<Void>;
};