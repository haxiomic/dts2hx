package three;

@:jsRequire("three", "HemisphereLight") extern class HemisphereLight extends Light {
	function new(?skyColor:ts.AnyOf3<String, Float, Color>, ?groundColor:ts.AnyOf3<String, Float, Color>, ?intensity:Float);
	var skyColor : Color;
	var groundColor : Color;
	function applyQuaternion(quaternion:Quaternion):HemisphereLight;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):HemisphereLight;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):HemisphereLight;
	function rotateX(angle:Float):HemisphereLight;
	function rotateY(angle:Float):HemisphereLight;
	function rotateZ(angle:Float):HemisphereLight;
	function translateOnAxis(axis:Vector3, distance:Float):HemisphereLight;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):HemisphereLight;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):HemisphereLight;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):HemisphereLight;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):HemisphereLight;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):HemisphereLight;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):HemisphereLight;
	function clone(?recursive:Bool):HemisphereLight;
	function copy(source:HemisphereLight, ?recursive:Bool):HemisphereLight;
	static var prototype : HemisphereLight;
}