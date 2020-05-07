package ts.html;
@:native("AudioWorklet") extern class AudioWorklet {
	function new();
	function addModule(moduleURL:String, ?options:WorkletOptions):ts.lib.Promise<Void>;
	static var prototype : AudioWorklet;
}