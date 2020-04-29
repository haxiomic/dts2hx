package js.html;
@:native("Worklet") extern class Worklet {
	function new();
	function addModule(moduleURL:String, ?options:WorkletOptions):js.lib.IPromise<Void>;
	static var prototype : IWorklet;
}