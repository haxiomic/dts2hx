package three;

/**
	4D vector.
	
	( class Vector4 implements Vector<Vector4> )
**/
@:jsRequire("three", "Vector4") extern class Vector4 {
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
	var x : Float;
	var y : Float;
	var z : Float;
	var w : Float;
	var width : Float;
	var height : Float;
	var isVector4 : Bool;
	/**
		Sets value of this vector.
	**/
	function set(x:Float, y:Float, z:Float, w:Float):Vector4;
	/**
		Sets all values of this vector.
	**/
	function setScalar(scalar:Float):Vector4;
	/**
		Sets X component of this vector.
	**/
	function setX(x:Float):Vector4;
	/**
		Sets Y component of this vector.
	**/
	function setY(y:Float):Vector4;
	/**
		Sets Z component of this vector.
	**/
	function setZ(z:Float):Vector4;
	/**
		Sets w component of this vector.
	**/
	function setW(w:Float):Vector4;
	function setComponent(index:Float, value:Float):Vector4;
	function getComponent(index:Float):Float;
	/**
		Clones this vector.
	**/
	function clone():Vector4;
	/**
		Copies value of v to this vector.
	**/
	function copy(v:Vector4):Vector4;
	/**
		Adds v to this vector.
	**/
	function add(v:Vector4, ?w:Vector4):Vector4;
	/**
		Adds the scalar value s to this vector's values.
	**/
	function addScalar(scalar:Float):Vector4;
	/**
		Sets this vector to a + b.
	**/
	function addVectors(a:Vector4, b:Vector4):Vector4;
	function addScaledVector(v:Vector4, s:Float):Vector4;
	/**
		Subtracts v from this vector.
	**/
	function sub(v:Vector4):Vector4;
	function subScalar(s:Float):Vector4;
	/**
		Sets this vector to a - b.
	**/
	function subVectors(a:Vector4, b:Vector4):Vector4;
	/**
		Multiplies this vector by scalar s.
	**/
	function multiplyScalar(s:Float):Vector4;
	function applyMatrix4(m:Matrix4):Vector4;
	/**
		Divides this vector by scalar s.
		Set vector to ( 0, 0, 0 ) if s == 0.
	**/
	function divideScalar(s:Float):Vector4;
	/**
		http://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToAngle/index.htm
	**/
	function setAxisAngleFromQuaternion(q:Quaternion):Vector4;
	/**
		http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToAngle/index.htm
	**/
	function setAxisAngleFromRotationMatrix(m:Matrix3):Vector4;
	function min(v:Vector4):Vector4;
	function max(v:Vector4):Vector4;
	function clamp(min:Vector4, max:Vector4):Vector4;
	function clampScalar(min:Float, max:Float):Vector4;
	function floor():Vector4;
	function ceil():Vector4;
	function round():Vector4;
	function roundToZero():Vector4;
	/**
		Inverts this vector.
	**/
	function negate():Vector4;
	/**
		Computes dot product of this vector and v.
	**/
	function dot(v:Vector4):Float;
	/**
		Computes squared length of this vector.
	**/
	function lengthSq():Float;
	/**
		Computes length of this vector.
	**/
	function length():Float;
	/**
		Computes the Manhattan length of this vector.
	**/
	function manhattanLength():Float;
	/**
		Normalizes this vector.
	**/
	function normalize():Vector4;
	/**
		Normalizes this vector and multiplies it by l.
	**/
	function setLength(length:Float):Vector4;
	/**
		Linearly interpolate between this vector and v with alpha factor.
	**/
	function lerp(v:Vector4, alpha:Float):Vector4;
	function lerpVectors(v1:Vector4, v2:Vector4, alpha:Float):Vector4;
	/**
		Checks for strict equality of this vector and v.
	**/
	function equals(v:Vector4):Bool;
	function fromArray(xyzw:Array<Float>, ?offset:Float):Vector4;
	function toArray(?xyzw:Array<Float>, ?offset:Float):Array<Float>;
	function fromBufferAttribute(attribute:BufferAttribute, index:Float, ?offset:Float):Vector4;
	static var prototype : Vector4;
}