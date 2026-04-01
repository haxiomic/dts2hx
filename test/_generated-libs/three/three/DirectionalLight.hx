package three;

/**
	Affects objects using MeshLambertMaterial or MeshPhongMaterial.
**/
@:jsRequire("three", "DirectionalLight") extern class DirectionalLight extends Light {
	function new(?color:ts.AnyOf3<String, Float, Color>, ?intensity:Float);
	/**
		Target used for shadow camera orientation.
	**/
	var target : Object3D;
	function applyQuaternion(quaternion:Quaternion):DirectionalLight;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):DirectionalLight;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):DirectionalLight;
	function rotateX(angle:Float):DirectionalLight;
	function rotateY(angle:Float):DirectionalLight;
	function rotateZ(angle:Float):DirectionalLight;
	function translateOnAxis(axis:Vector3, distance:Float):DirectionalLight;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):DirectionalLight;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):DirectionalLight;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):DirectionalLight;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):DirectionalLight;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):DirectionalLight;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):DirectionalLight;
	function clone(?recursive:Bool):DirectionalLight;
	function copy(source:DirectionalLight, ?recursive:Bool):DirectionalLight;
	static var prototype : DirectionalLight;
}