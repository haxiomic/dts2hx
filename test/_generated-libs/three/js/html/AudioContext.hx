package js.html;
/**
	An audio-processing graph built from audio modules linked together, each represented by an AudioNode.
**/
@:native("AudioContext") @tsInterface extern class AudioContext {
	function new(?contextOptions:AudioContextOptions);
	final baseLatency : Float;
	final outputLatency : Float;
	function close():js.lib.Promise<Void>;
	function createMediaElementSource(mediaElement:HTMLMediaElement):MediaElementAudioSourceNode;
	function createMediaStreamDestination():MediaStreamAudioDestinationNode;
	function createMediaStreamSource(mediaStream:MediaStream):MediaStreamAudioSourceNode;
	function createMediaStreamTrackSource(mediaStreamTrack:MediaStreamTrack):MediaStreamTrackAudioSourceNode;
	function getOutputTimestamp():AudioTimestamp;
	function resume():js.lib.Promise<Void>;
	function suspend():js.lib.Promise<Void>;
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
	final audioWorklet : AudioWorklet;
	final currentTime : Float;
	final destination : AudioDestinationNode;
	final listener : AudioListener;
	var onstatechange : Null<(ev:Event) -> Any>;
	final sampleRate : Float;
	final state : String;
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
	@:overload(function(feedforward:js.lib.Iterable<Float>, feedback:js.lib.Iterable<Float>):IIRFilterNode { })
	function createIIRFilter(feedforward:std.Array<Float>, feedback:std.Array<Float>):IIRFilterNode;
	function createOscillator():OscillatorNode;
	function createPanner():PannerNode;
	@:overload(function(real:js.lib.Iterable<Float>, imag:js.lib.Iterable<Float>, ?constraints:PeriodicWaveConstraints):PeriodicWave { })
	function createPeriodicWave(real:haxe.extern.EitherType<js.lib.Float32Array, std.Array<Float>>, imag:haxe.extern.EitherType<js.lib.Float32Array, std.Array<Float>>, ?constraints:PeriodicWaveConstraints):PeriodicWave;
	function createScriptProcessor(?bufferSize:Float, ?numberOfInputChannels:Float, ?numberOfOutputChannels:Float):ScriptProcessorNode;
	function createStereoPanner():StereoPannerNode;
	function createWaveShaper():WaveShaperNode;
	function decodeAudioData(audioData:js.lib.ArrayBuffer, ?successCallback:DecodeSuccessCallback, ?errorCallback:DecodeErrorCallback):js.lib.Promise<AudioBuffer>;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:Event):Bool;
	static var prototype : AudioContext;
}