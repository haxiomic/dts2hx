package js.html;

/**
	The **`AudioWorkletNode`** interface of the Web Audio API represents a base class for a user-defined AudioNode, which can be connected to an audio routing graph along with other nodes.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode)
**/
@:native("AudioWorkletNode") extern class AudioWorkletNode {
	function new(context:js.html.audio.BaseAudioContext, name:String, ?options:js.html.audio.AudioWorkletNodeOptions);
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode/processorerror_event)
	**/
	@:optional
	dynamic function onprocessorerror(ev:js.html.ErrorEvent):Dynamic;
	/**
		The read-only **`parameters`** property of the underlying AudioWorkletProcessor according to its getter.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode/parameters)
	**/
	final parameters : AudioParamMap;
	/**
		The read-only **`port`** property of the associated AudioWorkletProcessor.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode/port)
	**/
	final port : js.html.MessagePort;
	/**
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
	/**
		The **`channelCount`** property of the AudioNode interface represents an integer used to determine how many channels are used when up-mixing and down-mixing connections to any inputs to the node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCount)
	**/
	var channelCount : Float;
	/**
		The `channelCountMode` property of the AudioNode interface represents an enumerated value describing the way channels must be matched between the node's inputs and outputs.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioNode/channelCountMode)
	**/
	var channelCountMode : js.html.audio.ChannelCountMode;
	/**
		The **`channelInterpretation`** property of the AudioNode interface represents an enumerated value describing how input channels are mapped to output channels when the number of inputs/outputs is different.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioNode/channelInterpretation)
	**/
	var channelInterpretation : js.html.audio.ChannelInterpretation;
	/**
		The read-only `context` property of the the node is participating in.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioNode/context)
	**/
	final context : js.html.audio.BaseAudioContext;
	/**
		The `numberOfInputs` property of the AudioNode interface returns the number of inputs feeding the node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfInputs)
	**/
	final numberOfInputs : Float;
	/**
		The `numberOfOutputs` property of the AudioNode interface returns the number of outputs coming out of the node.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioNode/numberOfOutputs)
	**/
	final numberOfOutputs : Float;
	/**
		The `connect()` method of the AudioNode interface lets you connect one of the node's outputs to a target, which may be either another `AudioNode` (thereby directing the sound data to the specified node) or an change the value of that parameter over time.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
	**/
	@:overload(function(destinationParam:js.html.audio.AudioParam, ?output:Float):Void { })
	function connect(destinationNode:js.html.audio.AudioNode, ?output:Float, ?input:Float):js.html.audio.AudioNode;
	/**
		The **`disconnect()`** method of the AudioNode interface lets you disconnect one or more nodes from the node on which the method is called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
	**/
	@:overload(function(output:Float):Void { })
	@:overload(function(destinationNode:js.html.audio.AudioNode):Void { })
	@:overload(function(destinationNode:js.html.audio.AudioNode, output:Float):Void { })
	@:overload(function(destinationNode:js.html.audio.AudioNode, output:Float, input:Float):Void { })
	@:overload(function(destinationParam:js.html.audio.AudioParam):Void { })
	@:overload(function(destinationParam:js.html.audio.AudioParam, output:Float):Void { })
	function disconnect():Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
	static var prototype : AudioWorkletNode;
}