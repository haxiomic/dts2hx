package ts.html;
/**
	A type of AudioNode which operates as an audio source whose media is received from a MediaStream obtained using the WebRTC or Media Capture and Streams APIs.
**/
@:native("MediaStreamAudioSourceNode") extern class MediaStreamAudioSourceNode {
	function new(context:IAudioContext, options:MediaStreamAudioSourceOptions);
	final mediaStream : IMediaStream;
	var channelCount : Float;
	var channelCountMode : String;
	var channelInterpretation : String;
	final context : ts.lib.IBaseAudioContext;
	final numberOfInputs : Float;
	final numberOfOutputs : Float;
	@:overload(function(destinationParam:ts.lib.IAudioParam, ?output:Float):Void { })
	function connect(destinationNode:IAudioNode, ?output:Float, ?input:Float):IAudioNode;
	@:overload(function(output:Float):Void { })
	@:overload(function(destinationNode:IAudioNode):Void { })
	@:overload(function(destinationNode:IAudioNode, output:Float):Void { })
	@:overload(function(destinationNode:IAudioNode, output:Float, input:Float):Void { })
	@:overload(function(destinationParam:ts.lib.IAudioParam):Void { })
	@:overload(function(destinationParam:ts.lib.IAudioParam, output:Float):Void { })
	function disconnect():Void;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	function addEventListener(type:String, listener:Null<ts.AnyOf2<EventListener, EventListenerObject>>, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	function removeEventListener(type:String, callback:Null<ts.AnyOf2<EventListener, EventListenerObject>>, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	static var prototype : IMediaStreamAudioSourceNode;
}