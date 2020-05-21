package global.three;

@:native("THREE.LOD") extern class LOD extends Object3D {
	function new();
	var levels : Array<{
		var distance : Float;
		var object : Object3D;
	}>;
	function addLevel(object:Object3D, ?distance:Float):LOD;
	function getObjectForDistance(distance:Float):Object3D;
	function update(camera:Camera):Void;
	function toJSON(meta:Dynamic):Dynamic;
	var objects : Array<Dynamic>;
	function applyQuaternion(quaternion:Quaternion):LOD;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):LOD;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):LOD;
	function rotateX(angle:Float):LOD;
	function rotateY(angle:Float):LOD;
	function rotateZ(angle:Float):LOD;
	function translateOnAxis(axis:Vector3, distance:Float):LOD;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):LOD;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):LOD;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):LOD;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):LOD;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):LOD;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):LOD;
	function clone(?recursive:Bool):LOD;
	function copy(source:LOD, ?recursive:Bool):LOD;
	static var prototype : LOD;
}