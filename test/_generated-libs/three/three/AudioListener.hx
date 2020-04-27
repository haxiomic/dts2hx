package three;
@:jsRequire("three", "AudioListener") extern class AudioListener extends Object3D {
	function new();
	var type : String;
	var context : js.html.AudioContext;
	var gain : js.html.GainNode;
	var filter : Any;
	function getInput():js.html.GainNode;
	function removeFilter():Void;
	function setFilter(value:Any):Void;
	function getFilter():Any;
	function setMasterVolume(value:Float):Void;
	function getMasterVolume():Float;
	/**
		Updates global transform of the object and its children.
	**/
	function updateMatrixWorld(?force:Bool):Void;
}