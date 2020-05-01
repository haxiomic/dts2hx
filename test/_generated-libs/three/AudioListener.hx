package three;
@:jsRequire("three", "AudioListener") extern class AudioListener extends Object3D {
	function new();
	var context : ts.html.IAudioContext;
	var gain : ts.html.IGainNode;
	var filter : Dynamic;
	function getInput():ts.html.IGainNode;
	function removeFilter():Void;
	function setFilter(value:Dynamic):Void;
	function getFilter():Dynamic;
	function setMasterVolume(value:Float):Void;
	function getMasterVolume():Float;
}