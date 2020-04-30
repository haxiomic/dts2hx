package ts.html;
/**
	A generic interface for representing an audio processing module. Examples include:
**/
@:native("AudioNode") extern class AudioNode {
	function new();
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
	static var prototype : IAudioNode;
}