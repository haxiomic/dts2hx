package three;

@:jsRequire("three", "CameraHelper") extern class CameraHelper extends LineSegments {
	function new(camera:Camera);
	var camera : Camera;
	var pointMap : haxe.DynamicAccess<Array<Float>>;
	function update():Void;
	function computeLineDistances():CameraHelper;
	function applyQuaternion(quaternion:Quaternion):CameraHelper;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):CameraHelper;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):CameraHelper;
	function rotateX(angle:Float):CameraHelper;
	function rotateY(angle:Float):CameraHelper;
	function rotateZ(angle:Float):CameraHelper;
	function translateOnAxis(axis:Vector3, distance:Float):CameraHelper;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):CameraHelper;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):CameraHelper;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):CameraHelper;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):CameraHelper;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):CameraHelper;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):CameraHelper;
	function clone(?recursive:Bool):CameraHelper;
	function copy(source:CameraHelper, ?recursive:Bool):CameraHelper;
	static var prototype : CameraHelper;
}