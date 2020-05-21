package global.three;

/**
	Abstract base class for cameras. This class should always be inherited when you build a new camera.
**/
@:native("THREE.Camera") extern class Camera extends Object3D {
	/**
		This constructor sets following properties to the correct type: matrixWorldInverse, projectionMatrix and projectionMatrixInverse.
	**/
	function new();
	/**
		This is the inverse of matrixWorld. MatrixWorld contains the Matrix which has the world transform of the Camera.
	**/
	var matrixWorldInverse : Matrix4;
	/**
		This is the matrix which contains the projection.
	**/
	var projectionMatrix : Matrix4;
	/**
		This is the inverse of projectionMatrix.
	**/
	var projectionMatrixInverse : Matrix4;
	var isCamera : Bool;
	function applyQuaternion(quaternion:Quaternion):Camera;
	/**
		Rotate an object along an axis in object space. The axis is assumed to be normalized.
	**/
	function rotateOnAxis(axis:Vector3, angle:Float):Camera;
	/**
		Rotate an object along an axis in world space. The axis is assumed to be normalized. Method Assumes no rotated parent.
	**/
	function rotateOnWorldAxis(axis:Vector3, angle:Float):Camera;
	function rotateX(angle:Float):Camera;
	function rotateY(angle:Float):Camera;
	function rotateZ(angle:Float):Camera;
	function translateOnAxis(axis:Vector3, distance:Float):Camera;
	/**
		Translates object along x axis by distance.
	**/
	function translateX(distance:Float):Camera;
	/**
		Translates object along y axis by distance.
	**/
	function translateY(distance:Float):Camera;
	/**
		Translates object along z axis by distance.
	**/
	function translateZ(distance:Float):Camera;
	/**
		Adds object as child of this object.
	**/
	function add(object:haxe.extern.Rest<Object3D>):Camera;
	/**
		Removes object as child of this object.
	**/
	function remove(object:haxe.extern.Rest<Object3D>):Camera;
	/**
		Adds object as a child of this, while maintaining the object's world transform.
	**/
	function attach(object:Object3D):Camera;
	function clone(?recursive:Bool):Camera;
	function copy(source:Camera, ?recursive:Bool):Camera;
	static var prototype : Camera;
}