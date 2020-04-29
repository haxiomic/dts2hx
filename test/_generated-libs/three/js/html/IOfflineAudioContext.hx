package js.html;
/**
	An AudioContext interface representing an audio-processing graph built from linked together AudioNodes. In contrast with a standard AudioContext, an OfflineAudioContext doesn't render the audio to the device hardware; instead, it generates it, as fast as it can, and outputs the result to an AudioBuffer.
**/
extern typedef IOfflineAudioContext = {
	final length : Float;
	var oncomplete : Null<(ev:IOfflineAudioCompletionEvent) -> Any>;
	function resume():js.lib.IPromise<Void>;
	function startRendering():js.lib.IPromise<IAudioBuffer>;
	function suspend(suspendTime:Float):js.lib.IPromise<Void>;
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
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:haxe.extern.EitherType<EventListener, EventListenerObject>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Any) -> Any, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	final audioWorklet : IAudioWorklet;
	final currentTime : Float;
	final destination : IAudioDestinationNode;
	final listener : IAudioListener;
	var onstatechange : Null<(ev:IEvent) -> Any>;
	final sampleRate : Float;
	final state : String;
	function createAnalyser():IAnalyserNode;
	function createBiquadFilter():IBiquadFilterNode;
	function createBuffer(numberOfChannels:Float, length:Float, sampleRate:Float):IAudioBuffer;
	function createBufferSource():IAudioBufferSourceNode;
	function createChannelMerger(?numberOfInputs:Float):IChannelMergerNode;
	function createChannelSplitter(?numberOfOutputs:Float):IChannelSplitterNode;
	function createConstantSource():IConstantSourceNode;
	function createConvolver():IConvolverNode;
	function createDelay(?maxDelayTime:Float):IDelayNode;
	function createDynamicsCompressor():IDynamicsCompressorNode;
	function createGain():IGainNode;
	@:overload(function(feedforward:js.lib.Iterable<Float>, feedback:js.lib.Iterable<Float>):IIIRFilterNode { })
	function createIIRFilter(feedforward:std.Array<Float>, feedback:std.Array<Float>):IIIRFilterNode;
	function createOscillator():IOscillatorNode;
	function createPanner():IPannerNode;
	@:overload(function(real:js.lib.Iterable<Float>, imag:js.lib.Iterable<Float>, ?constraints:PeriodicWaveConstraints):IPeriodicWave { })
	function createPeriodicWave(real:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, imag:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?constraints:PeriodicWaveConstraints):IPeriodicWave;
	function createScriptProcessor(?bufferSize:Float, ?numberOfInputChannels:Float, ?numberOfOutputChannels:Float):IScriptProcessorNode;
	function createStereoPanner():IStereoPannerNode;
	function createWaveShaper():IWaveShaperNode;
	function decodeAudioData(audioData:js.lib.IArrayBuffer, ?successCallback:DecodeSuccessCallback, ?errorCallback:DecodeErrorCallback):js.lib.IPromise<IAudioBuffer>;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
};