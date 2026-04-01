package three;

/**
	This light's color gets applied to all the objects in the scene globally.
**/
@:jsRequire("three", "AmbientLight") extern class AmbientLight extends Light {
	/**
		This creates a Ambientlight with a color.
	**/
	function new(?color:ts.AnyOf3<String, Float, Color>, ?intensity:Float);
	function applyQuaternion(quaternion:Quaternion):AmbientLight;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):AmbientLight;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):AmbientLight;
	function rotateX(angle:Float):AmbientLight;
	function rotateY(angle:Float):AmbientLight;
	function rotateZ(angle:Float):AmbientLight;
	function translateOnAxis(axis:Vector3, distance:Float):AmbientLight;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):AmbientLight;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):AmbientLight;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):AmbientLight;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):AmbientLight;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):AmbientLight;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):AmbientLight;
	function clone(?recursive:Bool):AmbientLight;
	function copy(source:AmbientLight, ?recursive:Bool):AmbientLight;
	static var prototype : AmbientLight;
}