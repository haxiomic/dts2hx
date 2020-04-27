package js.lib;
@:native("BaseAudioContext") @tsInterface extern class BaseAudioContext {
	function new();
	final audioWorklet : js.html.AudioWorklet;
	final currentTime : Float;
	final destination : js.html.AudioDestinationNode;
	final listener : js.html.AudioListener;
	var onstatechange : Null<(ev:js.html.Event) -> Any>;
	final sampleRate : Float;
	final state : String;
	function createAnalyser():js.html.AnalyserNode;
	function createBiquadFilter():js.html.BiquadFilterNode;
	function createBuffer(numberOfChannels:Float, length:Float, sampleRate:Float):js.html.AudioBuffer;
	function createBufferSource():js.html.AudioBufferSourceNode;
	function createChannelMerger(?numberOfInputs:Float):js.html.ChannelMergerNode;
	function createChannelSplitter(?numberOfOutputs:Float):js.html.ChannelSplitterNode;
	function createConstantSource():js.html.ConstantSourceNode;
	function createConvolver():js.html.ConvolverNode;
	function createDelay(?maxDelayTime:Float):js.html.DelayNode;
	function createDynamicsCompressor():js.html.DynamicsCompressorNode;
	function createGain():js.html.GainNode;
	@:overload(function(feedforward:Iterable<Float>, feedback:Iterable<Float>):js.html.IIRFilterNode { })
	function createIIRFilter(feedforward:std.Array<Float>, feedback:std.Array<Float>):js.html.IIRFilterNode;
	function createOscillator():js.html.OscillatorNode;
	function createPanner():js.html.PannerNode;
	@:overload(function(real:Iterable<Float>, imag:Iterable<Float>, ?constraints:js.html.PeriodicWaveConstraints):js.html.PeriodicWave { })
	function createPeriodicWave(real:haxe.extern.EitherType<Float32Array, std.Array<Float>>, imag:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?constraints:js.html.PeriodicWaveConstraints):js.html.PeriodicWave;
	function createScriptProcessor(?bufferSize:Float, ?numberOfInputChannels:Float, ?numberOfOutputChannels:Float):js.html.ScriptProcessorNode;
	function createStereoPanner():js.html.StereoPannerNode;
	function createWaveShaper():js.html.WaveShaperNode;
	function decodeAudioData(audioData:ArrayBuffer, ?successCallback:js.html.DecodeSuccessCallback, ?errorCallback:js.html.DecodeErrorCallback):Promise<js.html.AudioBuffer>;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<js.html.EventListener, js.html.EventListenerObject>, ?options:haxe.extern.EitherType<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<js.html.EventListener, js.html.EventListenerObject>, ?options:haxe.extern.EitherType<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, js.html.EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:js.html.Event):Bool;
	static var prototype : BaseAudioContext;
}