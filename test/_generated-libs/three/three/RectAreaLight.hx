package three;

@:jsRequire("three", "RectAreaLight") extern class RectAreaLight extends Light {
	function new(?color:ts.AnyOf3<String, Float, Color>, ?intensity:Float, ?width:Float, ?height:Float);
	var width : Float;
	var height : Float;
	function applyQuaternion(quaternion:Quaternion):RectAreaLight;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):RectAreaLight;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):RectAreaLight;
	function rotateX(angle:Float):RectAreaLight;
	function rotateY(angle:Float):RectAreaLight;
	function rotateZ(angle:Float):RectAreaLight;
	function translateOnAxis(axis:Vector3, distance:Float):RectAreaLight;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):RectAreaLight;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):RectAreaLight;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):RectAreaLight;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):RectAreaLight;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):RectAreaLight;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):RectAreaLight;
	function clone(?recursive:Bool):RectAreaLight;
	function copy(source:RectAreaLight, ?recursive:Bool):RectAreaLight;
	static var prototype : RectAreaLight;
}