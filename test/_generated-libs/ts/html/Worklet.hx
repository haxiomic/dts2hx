package ts.html;
@:native("Worklet") extern class Worklet {
	function new();
	function addModule(moduleURL:String, ?options:WorkletOptions):ts.lib.IPromise<Void>;
	static var prototype : IWorklet;
}