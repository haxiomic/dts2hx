package global.three;

/**
	2D vector.
	
	( class Vector2 implements Vector<Vector2> )
**/
@:native("THREE.Vector2") extern class Vector2 {
	function new(?x:Float, ?y:Float);
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
	var isVector2 : Bool;
	/**
		Sets value of this vector.
	**/
	function set(x:Float, y:Float):Vector2;
	/**
		Sets the x and y values of this vector both equal to scalar.
	**/
	function setScalar(scalar:Float):Vector2;
	/**
		Sets X component of this vector.
	**/
	function setX(x:Float):Vector2;
	/**
		Sets Y component of this vector.
	**/
	function setY(y:Float):Vector2;
	/**
		Sets a component of this vector.
	**/
	function setComponent(index:Float, value:Float):Vector2;
	/**
		Gets a component of this vector.
	**/
	function getComponent(index:Float):Float;
	/**
		Returns a new Vector2 instance with the same `x` and `y` values.
	**/
	function clone():Vector2;
	/**
		Copies value of v to this vector.
	**/
	function copy(v:Vector2):Vector2;
	/**
		Adds v to this vector.
	**/
	function add(v:Vector2, ?w:Vector2):Vector2;
	/**
		Adds the scalar value s to this vector's x and y values.
	**/
	function addScalar(s:Float):Vector2;
	/**
		Sets this vector to a + b.
	**/
	function addVectors(a:Vector2, b:Vector2):Vector2;
	/**
		Adds the multiple of v and s to this vector.
	**/
	function addScaledVector(v:Vector2, s:Float):Vector2;
	/**
		Subtracts v from this vector.
	**/
	function sub(v:Vector2):Vector2;
	/**
		Subtracts s from this vector's x and y components.
	**/
	function subScalar(s:Float):Vector2;
	/**
		Sets this vector to a - b.
	**/
	function subVectors(a:Vector2, b:Vector2):Vector2;
	/**
		Multiplies this vector by v.
	**/
	function multiply(v:Vector2):Vector2;
	/**
		Multiplies this vector by scalar s.
	**/
	function multiplyScalar(scalar:Float):Vector2;
	/**
		Divides this vector by v.
	**/
	function divide(v:Vector2):Vector2;
	/**
		Divides this vector by scalar s.
		Set vector to ( 0, 0 ) if s == 0.
	**/
	function divideScalar(s:Float):Vector2;
	/**
		Multiplies this vector (with an implicit 1 as the 3rd component) by m.
	**/
	function applyMatrix3(m:Matrix3):Vector2;
	/**
		If this vector's x or y value is greater than v's x or y value, replace that value with the corresponding min value.
	**/
	function min(v:Vector2):Vector2;
	/**
		If this vector's x or y value is less than v's x or y value, replace that value with the corresponding max value.
	**/
	function max(v:Vector2):Vector2;
	/**
		If this vector's x or y value is greater than the max vector's x or y value, it is replaced by the corresponding value.
		If this vector's x or y value is less than the min vector's x or y value, it is replaced by the corresponding value.
	**/
	function clamp(min:Vector2, max:Vector2):Vector2;
	/**
		If this vector's x or y values are greater than the max value, they are replaced by the max value.
		If this vector's x or y values are less than the min value, they are replaced by the min value.
	**/
	function clampScalar(min:Float, max:Float):Vector2;
	/**
		If this vector's length is greater than the max value, it is replaced by the max value.
		If this vector's length is less than the min value, it is replaced by the min value.
	**/
	function clampLength(min:Float, max:Float):Vector2;
	/**
		The components of the vector are rounded down to the nearest integer value.
	**/
	function floor():Vector2;
	/**
		The x and y components of the vector are rounded up to the nearest integer value.
	**/
	function ceil():Vector2;
	/**
		The components of the vector are rounded to the nearest integer value.
	**/
	function round():Vector2;
	/**
		The components of the vector are rounded towards zero (up if negative, down if positive) to an integer value.
	**/
	function roundToZero():Vector2;
	/**
		Inverts this vector.
	**/
	function negate():Vector2;
	/**
		Computes dot product of this vector and v.
	**/
	function dot(v:Vector2):Float;
	/**
		Computes cross product of this vector and v.
	**/
	function cross(v:Vector2):Float;
	/**
		Computes squared length of this vector.
	**/
	function lengthSq():Float;
	/**
		Computes length of this vector.
	**/
	function length():Float;
	function lengthManhattan():Float;
	/**
		Computes the Manhattan length of this vector.
		
		Computes the Manhattan length of this vector.
	**/
	@:overload(function():Float { })
	function manhattanLength():Float;
	/**
		Normalizes this vector.
	**/
	function normalize():Vector2;
	/**
		computes the angle in radians with respect to the positive x-axis
	**/
	function angle():Float;
	/**
		Computes distance of this vector to v.
	**/
	function distanceTo(v:Vector2):Float;
	/**
		Computes squared distance of this vector to v.
	**/
	function distanceToSquared(v:Vector2):Float;
	function distanceToManhattan(v:Vector2):Float;
	/**
		Computes the Manhattan length (distance) from this vector to the given vector v
		
		Computes the Manhattan length (distance) from this vector to the given vector v
	**/
	@:overload(function(v:Vector2):Float { })
	function manhattanDistanceTo(v:Vector2):Float;
	/**
		Normalizes this vector and multiplies it by l.
	**/
	function setLength(length:Float):Vector2;
	/**
		Linearly interpolates between this vector and v, where alpha is the distance along the line - alpha = 0 will be this vector, and alpha = 1 will be v.
	**/
	function lerp(v:Vector2, alpha:Float):Vector2;
	/**
		Sets this vector to be the vector linearly interpolated between v1 and v2 where alpha is the distance along the line connecting the two vectors - alpha = 0 will be v1, and alpha = 1 will be v2.
	**/
	function lerpVectors(v1:Vector2, v2:Vector2, alpha:Float):Vector2;
	/**
		Checks for strict equality of this vector and v.
	**/
	function equals(v:Vector2):Bool;
	/**
		Sets this vector's x value to be array[offset] and y value to be array[offset + 1].
	**/
	function fromArray(array:Array<Float>, ?offset:Float):Vector2;
	/**
		Returns an array [x, y], or copies x and y into the provided array.
		
		Copies x and y into the provided array-like.
	**/
	@:overload(function(array:js.lib.ArrayLike<Float>, ?offset:Float):js.lib.ArrayLike<Float> { })
	function toArray(?array:Array<Float>, ?offset:Float):Array<Float>;
	/**
		Sets this vector's x and y values from the attribute.
	**/
	function fromBufferAttribute(attribute:BufferAttribute, index:Float):Vector2;
	/**
		Rotates the vector around center by angle radians.
	**/
	function rotateAround(center:Vector2, angle:Float):Vector2;
	static var prototype : Vector2;
}