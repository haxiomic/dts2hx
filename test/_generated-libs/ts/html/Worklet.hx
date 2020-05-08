package ts.html;
@:native("Worklet") extern class Worklet {
	function new();
	function addModule(moduleURL:String, ?options:WorkletOptions):ts.lib.Promise<Void>;
	static var prototype : Worklet;
}