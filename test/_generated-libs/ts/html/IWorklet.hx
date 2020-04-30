package ts.html;
extern typedef IWorklet = {
	function addModule(moduleURL:String, ?options:WorkletOptions):ts.lib.IPromise<Void>;
};