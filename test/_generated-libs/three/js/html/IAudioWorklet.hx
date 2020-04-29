package js.html;
extern typedef IAudioWorklet = {
	function addModule(moduleURL:String, ?options:WorkletOptions):js.lib.IPromise<Void>;
};