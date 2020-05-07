package ts.html;
/**
	The IIRFilterNode interface of the Web Audio API is a AudioNode processor which implements a general infinite impulse response (IIR)  filter; this type of filter can be used to implement tone control devices and graphic equalizers as well. It lets the parameters of the filter response be specified, so that it can be tuned as needed.
**/
typedef IIIRFilterNode = {
	function getFrequencyResponse(frequencyHz:ts.lib.Float32Array, magResponse:ts.lib.Float32Array, phaseResponse:ts.lib.Float32Array):Void;
	var channelCount : Float;
	var channelCountMode : ChannelCountMode;
	var channelInterpretation : ChannelInterpretation;
	final context : BaseAudioContext;
	final numberOfInputs : Float;
	final numberOfOutputs : Float;
	@:overload(function(destinationParam:AudioParam, ?output:Float):Void { })
	function connect(destinationNode:AudioNode, ?output:Float, ?input:Float):AudioNode;
	@:overload(function(output:Float):Void { })
	@:overload(function(destinationNode:AudioNode):Void { })
	@:overload(function(destinationNode:AudioNode, output:Float):Void { })
	@:overload(function(destinationNode:AudioNode, output:Float, input:Float):Void { })
	@:overload(function(destinationParam:AudioParam):Void { })
	@:overload(function(destinationParam:AudioParam, output:Float):Void { })
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
	function dispatchEvent(event:Event):Bool;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	function removeEventListener(type:String, callback:Null<ts.AnyOf2<EventListener, EventListenerObject>>, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
};