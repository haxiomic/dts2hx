package three;
/**
	Abstract base class for cameras. This class should always be inherited when you build a new camera.
**/
@:jsRequire("three", "Camera") extern class Camera extends Object3D {
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
	function getWorldDirection(target:Vector3):Vector3;
	/**
		Updates global transform of the object and its children.
	**/
	function updateMatrixWorld(?force:Bool):Void;
}