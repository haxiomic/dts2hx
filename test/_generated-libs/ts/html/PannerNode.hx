package ts.html;
/**
	A PannerNode always has exactly one input and one output: the input can be mono or stereo but the output is always stereo (2 channels); you can't have panning effects without at least two audio channels!
**/
@:native("PannerNode") extern class PannerNode {
	function new(context:ts.lib.IBaseAudioContext, ?options:PannerOptions);
	var coneInnerAngle : Float;
	var coneOuterAngle : Float;
	var coneOuterGain : Float;
	var distanceModel : String;
	var maxDistance : Float;
	final orientationX : ts.lib.IAudioParam;
	final orientationY : ts.lib.IAudioParam;
	final orientationZ : ts.lib.IAudioParam;
	var panningModel : String;
	final positionX : ts.lib.IAudioParam;
	final positionY : ts.lib.IAudioParam;
	final positionZ : ts.lib.IAudioParam;
	var refDistance : Float;
	var rolloffFactor : Float;
	function setOrientation(x:Float, y:Float, z:Float):Void;
	function setPosition(x:Float, y:Float, z:Float):Void;
	static var prototype : IPannerNode;
}