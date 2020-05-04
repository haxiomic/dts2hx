package ts.lib;
@:native("BaseAudioContext") extern class BaseAudioContext {
	function new();
	final audioWorklet : ts.html.IAudioWorklet;
	final currentTime : Float;
	final destination : ts.html.IAudioDestinationNode;
	final listener : ts.html.IAudioListener;
	var onstatechange : Null<(ev:ts.html.IEvent) -> Dynamic>;
	final sampleRate : Float;
	final state : ts.html.AudioContextState;
	function createAnalyser():ts.html.IAnalyserNode;
	function createBiquadFilter():ts.html.IBiquadFilterNode;
	function createBuffer(numberOfChannels:Float, length:Float, sampleRate:Float):ts.html.IAudioBuffer;
	function createBufferSource():ts.html.IAudioBufferSourceNode;
	function createChannelMerger(?numberOfInputs:Float):ts.html.IChannelMergerNode;
	function createChannelSplitter(?numberOfOutputs:Float):ts.html.IChannelSplitterNode;
	function createConstantSource():ts.html.IConstantSourceNode;
	function createConvolver():ts.html.IConvolverNode;
	function createDelay(?maxDelayTime:Float):ts.html.IDelayNode;
	function createDynamicsCompressor():ts.html.IDynamicsCompressorNode;
	function createGain():ts.html.IGainNode;
	@:overload(function(feedforward:Iterable<Float>, feedback:Iterable<Float>):ts.html.IIIRFilterNode { })
	function createIIRFilter(feedforward:Array<Float>, feedback:Array<Float>):ts.html.IIIRFilterNode;
	function createOscillator():ts.html.IOscillatorNode;
	function createPanner():ts.html.IPannerNode;
	@:overload(function(real:Iterable<Float>, imag:Iterable<Float>, ?constraints:ts.html.PeriodicWaveConstraints):ts.html.IPeriodicWave { })
	function createPeriodicWave(real:ts.AnyOf2<IFloat32Array, Array<Float>>, imag:ts.AnyOf2<IFloat32Array, Array<Float>>, ?constraints:ts.html.PeriodicWaveConstraints):ts.html.IPeriodicWave;
	function createScriptProcessor(?bufferSize:Float, ?numberOfInputChannels:Float, ?numberOfOutputChannels:Float):ts.html.IScriptProcessorNode;
	function createStereoPanner():ts.html.IStereoPannerNode;
	function createWaveShaper():ts.html.IWaveShaperNode;
	function decodeAudioData(audioData:IArrayBuffer, ?successCallback:ts.html.DecodeSuccessCallback, ?errorCallback:ts.html.DecodeErrorCallback):IPromise<ts.html.IAudioBuffer>;
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
	@:overload(function(type:String, listener:ts.html.EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, ts.html.AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, ts.html.AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:ts.html.EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, ts.html.EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, ts.html.EventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:ts.html.IEvent):Bool;
	static var prototype : IBaseAudioContext;
}