package three;

@:jsRequire("three", "Group") extern class Group extends Object3D {
	function new();
	var isGroup : Bool;
	function applyQuaternion(quaternion:Quaternion):Group;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Group;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Group;
	function rotateX(angle:Float):Group;
	function rotateY(angle:Float):Group;
	function rotateZ(angle:Float):Group;
	function translateOnAxis(axis:Vector3, distance:Float):Group;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Group;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Group;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Group;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Group;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Group;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Group;
	function clone(?recursive:Bool):Group;
	function copy(source:Group, ?recursive:Bool):Group;
	static var prototype : Group;
}