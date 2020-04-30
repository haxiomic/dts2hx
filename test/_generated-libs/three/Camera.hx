package three;
/**
	Abstract base class for cameras. This class should always be inherited when you build a new camera.
**/
@:jsRequire("three", "Camera") extern class Camera extends Object3D {
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
}