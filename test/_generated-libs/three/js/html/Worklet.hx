package js.html;
@:native("Worklet") @tsInterface extern class Worklet {
	function new();
	function addModule(moduleURL:String, ?options:WorkletOptions):js.lib.Promise<Void>;
	static var prototype : Worklet;
}