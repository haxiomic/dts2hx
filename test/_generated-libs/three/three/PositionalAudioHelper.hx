package three;

@:jsRequire("three", "PositionalAudioHelper") extern class PositionalAudioHelper extends Line {
	function new(audio:PositionalAudio, ?range:Float, ?divisionsInnerAngle:Float, ?divisionsOuterAngle:Float);
	var audio : PositionalAudio;
	var range : Float;
	var divisionsInnerAngle : Float;
	var divisionsOuterAngle : Float;
	function dispose():Void;
	function update():Void;
	function computeLineDistances():PositionalAudioHelper;
	function applyQuaternion(quaternion:Quaternion):PositionalAudioHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):PositionalAudioHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):PositionalAudioHelper;
	function rotateX(angle:Float):PositionalAudioHelper;
	function rotateY(angle:Float):PositionalAudioHelper;
	function rotateZ(angle:Float):PositionalAudioHelper;
	function translateOnAxis(axis:Vector3, distance:Float):PositionalAudioHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):PositionalAudioHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):PositionalAudioHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):PositionalAudioHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):PositionalAudioHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):PositionalAudioHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):PositionalAudioHelper;
	function clone(?recursive:Bool):PositionalAudioHelper;
	function copy(source:PositionalAudioHelper, ?recursive:Bool):PositionalAudioHelper;
	static var prototype : PositionalAudioHelper;
}