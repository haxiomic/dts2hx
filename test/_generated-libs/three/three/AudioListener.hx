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
	function applyQuaternion(quaternion:Quaternion):AudioListener;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):AudioListener;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):AudioListener;
	function rotateX(angle:Float):AudioListener;
	function rotateY(angle:Float):AudioListener;
	function rotateZ(angle:Float):AudioListener;
	function translateOnAxis(axis:Vector3, distance:Float):AudioListener;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):AudioListener;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):AudioListener;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):AudioListener;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):AudioListener;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):AudioListener;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):AudioListener;
	function clone(?recursive:Bool):AudioListener;
	function copy(source:AudioListener, ?recursive:Bool):AudioListener;
	static var prototype : AudioListener;
}