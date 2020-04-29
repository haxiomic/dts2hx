package js.html;
extern typedef IWorklet = {
	function addModule(moduleURL:String, ?options:WorkletOptions):js.lib.IPromise<Void>;
};