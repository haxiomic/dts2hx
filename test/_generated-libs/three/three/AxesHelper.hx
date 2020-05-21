package three;

@:jsRequire("three", "AxesHelper") extern class AxesHelper extends LineSegments {
	function new(?size:Float);
	function computeLineDistances():AxesHelper;
	function applyQuaternion(quaternion:Quaternion):AxesHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):AxesHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):AxesHelper;
	function rotateX(angle:Float):AxesHelper;
	function rotateY(angle:Float):AxesHelper;
	function rotateZ(angle:Float):AxesHelper;
	function translateOnAxis(axis:Vector3, distance:Float):AxesHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):AxesHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):AxesHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):AxesHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):AxesHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):AxesHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):AxesHelper;
	function clone(?recursive:Bool):AxesHelper;
	function copy(source:AxesHelper, ?recursive:Bool):AxesHelper;
	static var prototype : AxesHelper;
}