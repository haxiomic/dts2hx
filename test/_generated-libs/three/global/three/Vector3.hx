package global.three;

/**
	3D vector.
**/
@:native("THREE.Vector3") extern class Vector3 {
	function new(?x:Float, ?y:Float, ?z:Float);
	var x : Float;
	var y : Float;
	var z : Float;
	var isVector3 : Bool;
	/**
		Sets value of this vector.
	**/
	function set(x:Float, y:Float, z:Float):Vector3;
	/**
		Sets all values of this vector.
	**/
	function setScalar(scalar:Float):Vector3;
	/**
		Sets x value of this vector.
	**/
	function setX(x:Float):Vector3;
	/**
		Sets y value of this vector.
	**/
	function setY(y:Float):Vector3;
	/**
		Sets z value of this vector.
	**/
	function setZ(z:Float):Vector3;
	function setComponent(index:Float, value:Float):Vector3;
	function getComponent(index:Float):Float;
	/**
		Clones this vector.
	**/
	function clone():Vector3;
	/**
		Copies value of v to this vector.
	**/
	function copy(v:Vector3):Vector3;
	/**
		Adds v to this vector.
	**/
	function add(a:Vector3, ?b:Vector3):Vector3;
	/**
		Adds the scalar value s to this vector's values.
	**/
	function addScalar(s:Float):Vector3;
	function addScaledVector(v:Vector3, s:Float):Vector3;
	/**
		Sets this vector to a + b.
	**/
	function addVectors(a:Vector3, b:Vector3):Vector3;
	/**
		Subtracts v from this vector.
	**/
	function sub(a:Vector3):Vector3;
	function subScalar(s:Float):Vector3;
	/**
		Sets this vector to a - b.
	**/
	function subVectors(a:Vector3, b:Vector3):Vector3;
	function multiply(v:Vector3):Vector3;
	/**
		Multiplies this vector by scalar s.
	**/
	function multiplyScalar(s:Float):Vector3;
	function multiplyVectors(a:Vector3, b:Vector3):Vector3;
	function applyEuler(euler:Euler):Vector3;
	function applyAxisAngle(axis:Vector3, angle:Float):Vector3;
	function applyMatrix3(m:Matrix3):Vector3;
	function applyMatrix4(m:Matrix4):Vector3;
	function applyQuaternion(q:Quaternion):Vector3;
	function project(camera:Camera):Vector3;
	function unproject(camera:Camera):Vector3;
	function transformDirection(m:Matrix4):Vector3;
	function divide(v:Vector3):Vector3;
	/**
		Divides this vector by scalar s.
		Set vector to ( 0, 0, 0 ) if s == 0.
	**/
	function divideScalar(s:Float):Vector3;
	function min(v:Vector3):Vector3;
	function max(v:Vector3):Vector3;
	function clamp(min:Vector3, max:Vector3):Vector3;
	function clampScalar(min:Float, max:Float):Vector3;
	function clampLength(min:Float, max:Float):Vector3;
	function floor():Vector3;
	function ceil():Vector3;
	function round():Vector3;
	function roundToZero():Vector3;
	/**
		Inverts this vector.
	**/
	function negate():Vector3;
	/**
		Computes dot product of this vector and v.
	**/
	function dot(v:Vector3):Float;
	/**
		Computes squared length of this vector.
	**/
	function lengthSq():Float;
	/**
		Computes length of this vector.
	**/
	function length():Float;
	/**
		Computes Manhattan length of this vector.
		http://en.wikipedia.org/wiki/Taxicab_geometry
	**/
	function lengthManhattan():Float;
	/**
		Computes the Manhattan length of this vector.
	**/
	function manhattanLength():Float;
	/**
		Computes the Manhattan length (distance) from this vector to the given vector v
	**/
	function manhattanDistanceTo(v:Vector3):Float;
	/**
		Normalizes this vector.
	**/
	function normalize():Vector3;
	/**
		Normalizes this vector and multiplies it by l.
	**/
	function setLength(l:Float):Vector3;
	/**
		lerp(v:T, alpha:number):T;
	**/
	function lerp(v:Vector3, alpha:Float):Vector3;
	function lerpVectors(v1:Vector3, v2:Vector3, alpha:Float):Vector3;
	/**
		Sets this vector to cross product of itself and v.
	**/
	function cross(a:Vector3, ?w:Vector3):Vector3;
	/**
		Sets this vector to cross product of a and b.
	**/
	function crossVectors(a:Vector3, b:Vector3):Vector3;
	function projectOnVector(v:Vector3):Vector3;
	function projectOnPlane(planeNormal:Vector3):Vector3;
	function reflect(vector:Vector3):Vector3;
	function angleTo(v:Vector3):Float;
	/**
		Computes distance of this vector to v.
	**/
	function distanceTo(v:Vector3):Float;
	/**
		Computes squared distance of this vector to v.
	**/
	function distanceToSquared(v:Vector3):Float;
	function distanceToManhattan(v:Vector3):Float;
	function setFromSpherical(s:Spherical):Vector3;
	function setFromCylindrical(s:Cylindrical):Vector3;
	function setFromMatrixPosition(m:Matrix4):Vector3;
	function setFromMatrixScale(m:Matrix4):Vector3;
	function setFromMatrixColumn(matrix:Matrix4, index:Float):Vector3;
	/**
		Checks for strict equality of this vector and v.
	**/
	function equals(v:Vector3):Bool;
	function fromArray(xyz:Array<Float>, ?offset:Float):Vector3;
	/**
		Returns an array [x, y, z], or copies x, y and z into the provided array.
		
		Copies x, y and z into the provided array-like.
	**/
	@:overload(function(xyz:js.lib.ArrayLike<Float>, ?offset:Float):js.lib.ArrayLike<Float> { })
	function toArray(?xyz:Array<Float>, ?offset:Float):Array<Float>;
	function fromBufferAttribute(attribute:BufferAttribute, index:Float, ?offset:Float):Vector3;
	static var prototype : Vector3;
}