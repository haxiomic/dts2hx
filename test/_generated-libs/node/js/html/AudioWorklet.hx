package js.html;

/**
	The **`AudioWorklet`** interface of the Web Audio API is used to supply custom audio processing scripts that execute in a separate thread to provide very low latency audio processing.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioWorklet)
**/
@:native("AudioWorklet") extern class AudioWorklet {
	function new();
	/**
		The **`addModule()`** method of the adds it to the current `Worklet`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Worklet/addModule)
	**/
	function addModule(moduleURL:ts.AnyOf2<String, js.html.URL>, ?options:WorkletOptions):js.lib.Promise<ts.Undefined>;
	static var prototype : AudioWorklet;
}