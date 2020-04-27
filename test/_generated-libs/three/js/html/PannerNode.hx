package js.html;
/**
	A PannerNode always has exactly one input and one output: the input can be mono or stereo but the output is always stereo (2 channels); you can't have panning effects without at least two audio channels!
**/
@:native("PannerNode") @tsInterface extern class PannerNode {
	function new(context:js.lib.BaseAudioContext, ?options:PannerOptions);
	var coneInnerAngle : Float;
	var coneOuterAngle : Float;
	var coneOuterGain : Float;
	var distanceModel : String;
	var maxDistance : Float;
	final orientationX : js.lib.AudioParam;
	final orientationY : js.lib.AudioParam;
	final orientationZ : js.lib.AudioParam;
	var panningModel : String;
	final positionX : js.lib.AudioParam;
	final positionY : js.lib.AudioParam;
	final positionZ : js.lib.AudioParam;
	var refDistance : Float;
	var rolloffFactor : Float;
	function setOrientation(x:Float, y:Float, z:Float):Void;
	function setPosition(x:Float, y:Float, z:Float):Void;
	var channelCount : Float;
	var channelCountMode : String;
	var channelInterpretation : String;
	final context : js.lib.BaseAudioContext;
	final numberOfInputs : Float;
	final numberOfOutputs : Float;
	@:overload(function(destinationParam:js.lib.AudioParam, ?output:Float):Void { })
	function connect(destinationNode:AudioNode, ?output:Float, ?input:Float):AudioNode;
	@:overload(function(output:Float):Void { })
	@:overload(function(destinationNode:AudioNode):Void { })
	@:overload(function(destinationNode:AudioNode, output:Float):Void { })
	@:overload(function(destinationNode:AudioNode, output:Float, input:Float):Void { })
	@:overload(function(destinationParam:js.lib.AudioParam):Void { })
	@:overload(function(destinationParam:js.lib.AudioParam, output:Float):Void { })
	function disconnect():Void;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	function addEventListener(type:String, listener:Null<haxe.extern.EitherType<EventListener, EventListenerObject>>, ?options:haxe.extern.EitherType<Bool, AddEventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:Event):Bool;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	function removeEventListener(type:String, callback:Null<haxe.extern.EitherType<EventListener, EventListenerObject>>, ?options:haxe.extern.EitherType<Bool, EventListenerOptions>):Void;
	static var prototype : PannerNode;
}