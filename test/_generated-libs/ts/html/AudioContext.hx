package ts.html;
/**
	An audio-processing graph built from audio modules linked together, each represented by an AudioNode.
**/
@:native("AudioContext") extern class AudioContext {
	function new(?contextOptions:AudioContextOptions);
	final baseLatency : Float;
	final outputLatency : Float;
	function close():ts.lib.IPromise<Void>;
	function createMediaElementSource(mediaElement:IHTMLMediaElement):IMediaElementAudioSourceNode;
	function createMediaStreamDestination():IMediaStreamAudioDestinationNode;
	function createMediaStreamSource(mediaStream:IMediaStream):IMediaStreamAudioSourceNode;
	function createMediaStreamTrackSource(mediaStreamTrack:IMediaStreamTrack):IMediaStreamTrackAudioSourceNode;
	function getOutputTimestamp():AudioTimestamp;
	function resume():ts.lib.IPromise<Void>;
	function suspend():ts.lib.IPromise<Void>;
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
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:ts.AnyOf2<EventListener, EventListenerObject>, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Any) -> Any, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
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
	@:overload(function(feedforward:ts.lib.Iterable<Float>, feedback:ts.lib.Iterable<Float>):IIIRFilterNode { })
	function createIIRFilter(feedforward:std.Array<Float>, feedback:std.Array<Float>):IIIRFilterNode;
	function createOscillator():IOscillatorNode;
	function createPanner():IPannerNode;
	@:overload(function(real:ts.lib.Iterable<Float>, imag:ts.lib.Iterable<Float>, ?constraints:PeriodicWaveConstraints):IPeriodicWave { })
	function createPeriodicWave(real:ts.AnyOf2<ts.lib.IFloat32Array, std.Array<Float>>, imag:ts.AnyOf2<ts.lib.IFloat32Array, std.Array<Float>>, ?constraints:PeriodicWaveConstraints):IPeriodicWave;
	function createScriptProcessor(?bufferSize:Float, ?numberOfInputChannels:Float, ?numberOfOutputChannels:Float):IScriptProcessorNode;
	function createStereoPanner():IStereoPannerNode;
	function createWaveShaper():IWaveShaperNode;
	function decodeAudioData(audioData:ts.lib.IArrayBuffer, ?successCallback:DecodeSuccessCallback, ?errorCallback:DecodeErrorCallback):ts.lib.IPromise<IAudioBuffer>;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
	static var prototype : IAudioContext;
}