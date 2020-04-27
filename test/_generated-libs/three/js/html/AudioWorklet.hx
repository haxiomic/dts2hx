package js.html;
@:native("AudioWorklet") @tsInterface extern class AudioWorklet {
	function new();
	function addModule(moduleURL:String, ?options:WorkletOptions):js.lib.Promise<Void>;
	static var prototype : AudioWorklet;
}