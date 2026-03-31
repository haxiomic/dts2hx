package three;

@:jsRequire("three", "AudioListener") extern class AudioListener extends Object3D {
	function new();
	var context : js.html.audio.AudioContext;
	var gain : js.html.audio.GainNode;
	var filter : Dynamic;
	function getInput():js.html.audio.GainNode;
	function removeFilter():Void;
	function setFilter(value:Dynamic):Void;
	function getFilter():Dynamic;
	function setMasterVolume(value:Float):Void;
	function getMasterVolume():Float;
	function copy(source:AudioListener, ?recursive:Bool):AudioListener;
	static var prototype : AudioListener;
}