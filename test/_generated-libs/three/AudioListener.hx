package three;
@:jsRequire("three", "AudioListener") extern class AudioListener extends Object3D {
	function new();
	var context : ts.html.IAudioContext;
	var gain : ts.html.IGainNode;
	var filter : Any;
	function getInput():ts.html.IGainNode;
	function removeFilter():Void;
	function setFilter(value:Any):Void;
	function getFilter():Any;
	function setMasterVolume(value:Float):Void;
	function getMasterVolume():Float;
}