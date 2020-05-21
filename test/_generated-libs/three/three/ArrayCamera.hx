package three;

@:jsRequire("three", "ArrayCamera") extern class ArrayCamera extends PerspectiveCamera {
	function new(?cameras:Array<PerspectiveCamera>);
	var cameras : Array<PerspectiveCamera>;
	var isArrayCamera : Bool;
	function applyQuaternion(quaternion:Quaternion):ArrayCamera;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):ArrayCamera;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):ArrayCamera;
	function rotateX(angle:Float):ArrayCamera;
	function rotateY(angle:Float):ArrayCamera;
	function rotateZ(angle:Float):ArrayCamera;
	function translateOnAxis(axis:Vector3, distance:Float):ArrayCamera;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):ArrayCamera;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):ArrayCamera;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):ArrayCamera;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):ArrayCamera;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):ArrayCamera;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):ArrayCamera;
	function clone(?recursive:Bool):ArrayCamera;
	function copy(source:ArrayCamera, ?recursive:Bool):ArrayCamera;
	static var prototype : ArrayCamera;
}