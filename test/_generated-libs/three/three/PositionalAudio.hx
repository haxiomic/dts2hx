package three;
@:jsRequire("three", "PositionalAudio") extern class PositionalAudio extends Audio {
	function new(listener:AudioListener);
	var panner : js.html.PannerNode;
	function setRefDistance(value:Float):PositionalAudio;
	function getRefDistance():Float;
	function setRolloffFactor(value:Float):PositionalAudio;
	function getRolloffFactor():Float;
	function setDistanceModel(value:String):PositionalAudio;
	function getDistanceModel():String;
	function setMaxDistance(value:Float):PositionalAudio;
	function getMaxDistance():Float;
	function setDirectionalCone(coneInnerAngle:Float, coneOuterAngle:Float, coneOuterGain:Float):PositionalAudio;
}