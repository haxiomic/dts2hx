package ts.html;
/**
	An audio-processing graph built from audio modules linked together, each represented by an AudioNode.
**/
typedef IAudioContext = {
	final baseLatency : Float;
	final outputLatency : Float;
	function close():ts.lib.Promise<Void>;
	function createMediaElementSource(mediaElement:HTMLMediaElement):MediaElementAudioSourceNode;
	function createMediaStreamDestination():MediaStreamAudioDestinationNode;
	function createMediaStreamSource(mediaStream:MediaStream):MediaStreamAudioSourceNode;
	function createMediaStreamTrackSource(mediaStreamTrack:MediaStreamTrack):MediaStreamTrackAudioSourceNode;
	function getOutputTimestamp():AudioTimestamp;
	function resume():ts.lib.Promise<Void>;
	function suspend():ts.lib.Promise<Void>;
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
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	final audioWorklet : AudioWorklet;
	final currentTime : Float;
	final destination : AudioDestinationNode;
	final listener : AudioListener;
	var onstatechange : Null<(ev:Event) -> Dynamic>;
	final sampleRate : Float;
	final state : AudioContextState;
	function createAnalyser():AnalyserNode;
	function createBiquadFilter():BiquadFilterNode;
	function createBuffer(numberOfChannels:Float, length:Float, sampleRate:Float):AudioBuffer;
	function createBufferSource():AudioBufferSourceNode;
	function createChannelMerger(?numberOfInputs:Float):ChannelMergerNode;
	function createChannelSplitter(?numberOfOutputs:Float):ChannelSplitterNode;
	function createConstantSource():ConstantSourceNode;
	function createConvolver():ConvolverNode;
	function createDelay(?maxDelayTime:Float):DelayNode;
	function createDynamicsCompressor():DynamicsCompressorNode;
	function createGain():GainNode;
	@:overload(function(feedforward:ts.lib.Iterable<Float>, feedback:ts.lib.Iterable<Float>):IIRFilterNode { })
	function createIIRFilter(feedforward:Array<Float>, feedback:Array<Float>):IIRFilterNode;
	function createOscillator():OscillatorNode;
	function createPanner():PannerNode;
	@:overload(function(real:ts.lib.Iterable<Float>, imag:ts.lib.Iterable<Float>, ?constraints:PeriodicWaveConstraints):PeriodicWave { })
	function createPeriodicWave(real:ts.AnyOf2<ts.lib.Float32Array, Array<Float>>, imag:ts.AnyOf2<ts.lib.Float32Array, Array<Float>>, ?constraints:PeriodicWaveConstraints):PeriodicWave;
	function createScriptProcessor(?bufferSize:Float, ?numberOfInputChannels:Float, ?numberOfOutputChannels:Float):ScriptProcessorNode;
	function createStereoPanner():StereoPannerNode;
	function createWaveShaper():WaveShaperNode;
	function decodeAudioData(audioData:ts.lib.ArrayBuffer, ?successCallback:DecodeSuccessCallback, ?errorCallback:DecodeErrorCallback):ts.lib.Promise<AudioBuffer>;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:Event):Bool;
};