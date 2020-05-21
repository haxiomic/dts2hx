package global.three;

@:native("THREE.Bone") extern class Bone extends Object3D {
	function new();
	var isBone : Bool;
	function applyQuaternion(quaternion:Quaternion):Bone;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Bone;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Bone;
	function rotateX(angle:Float):Bone;
	function rotateY(angle:Float):Bone;
	function rotateZ(angle:Float):Bone;
	function translateOnAxis(axis:Vector3, distance:Float):Bone;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Bone;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Bone;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Bone;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Bone;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Bone;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Bone;
	function clone(?recursive:Bool):Bone;
	function copy(source:Bone, ?recursive:Bool):Bone;
	static var prototype : Bone;
}