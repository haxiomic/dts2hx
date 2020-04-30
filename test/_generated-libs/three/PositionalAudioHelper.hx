package three;
@:jsRequire("three", "PositionalAudioHelper") extern class PositionalAudioHelper extends Line {
	function new(audio:PositionalAudio, ?range:Float, ?divisionsInnerAngle:Float, ?divisionsOuterAngle:Float);
	var audio : PositionalAudio;
	var range : Float;
	var divisionsInnerAngle : Float;
	var divisionsOuterAngle : Float;
	function dispose():Void;
	function update():Void;
}