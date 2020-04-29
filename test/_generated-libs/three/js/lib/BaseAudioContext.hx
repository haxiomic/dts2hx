package js.lib;
@:native("BaseAudioContext") extern class BaseAudioContext {
	function new();
	final audioWorklet : js.html.IAudioWorklet;
	final currentTime : Float;
	final destination : js.html.IAudioDestinationNode;
	final listener : js.html.IAudioListener;
	var onstatechange : Null<(ev:js.html.IEvent) -> Any>;
	final sampleRate : Float;
	final state : String;
	function createAnalyser():js.html.IAnalyserNode;
	function createBiquadFilter():js.html.IBiquadFilterNode;
	function createBuffer(numberOfChannels:Float, length:Float, sampleRate:Float):js.html.IAudioBuffer;
	function createBufferSource():js.html.IAudioBufferSourceNode;
	function createChannelMerger(?numberOfInputs:Float):js.html.IChannelMergerNode;
	function createChannelSplitter(?numberOfOutputs:Float):js.html.IChannelSplitterNode;
	function createConstantSource():js.html.IConstantSourceNode;
	function createConvolver():js.html.IConvolverNode;
	function createDelay(?maxDelayTime:Float):js.html.IDelayNode;
	function createDynamicsCompressor():js.html.IDynamicsCompressorNode;
	function createGain():js.html.IGainNode;
	@:overload(function(feedforward:Iterable<Float>, feedback:Iterable<Float>):js.html.IIIRFilterNode { })
	function createIIRFilter(feedforward:std.Array<Float>, feedback:std.Array<Float>):js.html.IIIRFilterNode;
	function createOscillator():js.html.IOscillatorNode;
	function createPanner():js.html.IPannerNode;
	@:overload(function(real:Iterable<Float>, imag:Iterable<Float>, ?constraints:js.html.PeriodicWaveConstraints):js.html.IPeriodicWave { })
	function createPeriodicWave(real:haxe.extern.EitherType<IFloat32Array, std.Array<Float>>, imag:haxe.extern.EitherType<IFloat32Array, std.Array<Float>>, ?constraints:js.html.PeriodicWaveConstraints):js.html.IPeriodicWave;
	function createScriptProcessor(?bufferSize:Float, ?numberOfInputChannels:Float, ?numberOfOutputChannels:Float):js.html.IScriptProcessorNode;
	function createStereoPanner():js.html.IStereoPannerNode;
	function createWaveShaper():js.html.IWaveShaperNode;
	function decodeAudioData(audioData:IArrayBuffer, ?successCallback:js.html.DecodeSuccessCallback, ?errorCallback:js.html.DecodeErrorCallback):IPromise<js.html.IAudioBuffer>;
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
	function dispatchEvent(event:js.html.IEvent):Bool;
	static var prototype : IBaseAudioContext;
}