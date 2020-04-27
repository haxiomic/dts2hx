package three;
/**
	( class Matrix3 implements Matrix&lt;Matrix3&gt; )
**/
@:jsRequire("three", "Matrix3") extern class Matrix3 implements Matrix {
	/**
		Creates an identity matrix.
	**/
	function new();
	/**
		Array with matrix values.
	**/
	var elements : std.Array<Float>;
	function set(n11:Float, n12:Float, n13:Float, n21:Float, n22:Float, n23:Float, n31:Float, n32:Float, n33:Float):Matrix3;
	/**
		identity():T;
	**/
	function identity():Matrix3;
	/**
		clone():T;
	**/
	function clone():Matrix3;
	/**
		copy(m:T):T;
	**/
	function copy(m:Matrix3):Matrix3;
	function setFromMatrix4(m:Matrix4):Matrix3;
	function applyToBuffer(buffer:BufferAttribute, ?offset:Float, ?length:Float):BufferAttribute;
	function applyToBufferAttribute(attribute:BufferAttribute):BufferAttribute;
	/**
		multiplyScalar(s:number):T;
	**/
	function multiplyScalar(s:Float):Matrix3;
	function determinant():Float;
	/**
		getInverse(matrix:T, throwOnInvertible?:boolean):T;
		
		
		
		getInverse(matrix:T, throwOnInvertible?:boolean):T;
	**/
	@:overload(function(matrix:Matrix4, ?throwOnDegenerate:Bool):Matrix3 { })
	function getInverse(matrix:Matrix3, ?throwOnDegenerate:Bool):Matrix3;
	/**
		Transposes this matrix in place.
	**/
	function transpose():Matrix3;
	function getNormalMatrix(matrix4:Matrix4):Matrix3;
	/**
		Transposes this matrix into the supplied array r, and returns itself.
	**/
	function transposeIntoArray(r:std.Array<Float>):std.Array<Float>;
	function setUvTransform(tx:Float, ty:Float, sx:Float, sy:Float, rotation:Float, cx:Float, cy:Float):Matrix3;
	function scale(sx:Float, sy:Float):Matrix3;
	function rotate(theta:Float):Matrix3;
	function translate(tx:Float, ty:Float):Matrix3;
	function equals(matrix:Matrix3):Bool;
	function fromArray(array:std.Array<Float>, ?offset:Float):Matrix3;
	function toArray(?array:std.Array<Float>, ?offset:Float):std.Array<Float>;
	/**
		Multiplies this matrix by m.
	**/
	function multiply(m:Matrix3):Matrix3;
	function premultiply(m:Matrix3):Matrix3;
	/**
		Sets this matrix to a x b.
	**/
	function multiplyMatrices(a:Matrix3, b:Matrix3):Matrix3;
	function multiplyVector3(vector:Vector3):Any;
	function multiplyVector3Array(a:Any):Any;
	function flattenToArrayOffset(array:std.Array<Float>, offset:Float):std.Array<Float>;
}