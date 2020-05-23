package global.three;

@:native("THREE.Math") @valueModuleOnly extern class Math_ {
	static function generateUUID():String;
	/**
		Clamps the x to be between a and b.
	**/
	static function clamp(value:Float, min:Float, max:Float):Float;
	static function euclideanModulo(n:Float, m:Float):Float;
	/**
		Linear mapping of x from range [a1, a2] to range [b1, b2].
	**/
	static function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float):Float;
	static function smoothstep(x:Float, min:Float, max:Float):Float;
	static function smootherstep(x:Float, min:Float, max:Float):Float;
	/**
		Random float from 0 to 1 with 16 bits of randomness.
		Standard Math.random() creates repetitive patterns when applied over larger space.
	**/
	static function random16():Float;
	/**
		Random integer from low to high interval.
	**/
	static function randInt(low:Float, high:Float):Float;
	/**
		Random float from low to high interval.
	**/
	static function randFloat(low:Float, high:Float):Float;
	/**
		Random float from - range / 2 to range / 2 interval.
	**/
	static function randFloatSpread(range:Float):Float;
	static function degToRad(degrees:Float):Float;
	static function radToDeg(radians:Float):Float;
	static function isPowerOfTwo(value:Float):Bool;
	/**
		Returns a value linearly interpolated from two known points based
		on the given interval - t = 0 will return x and t = 1 will return y.
	**/
	static function lerp(x:Float, y:Float, t:Float):Float;
	static function nearestPowerOfTwo(value:Float):Float;
	static function nextPowerOfTwo(value:Float):Float;
	static function floorPowerOfTwo(value:Float):Float;
	static function ceilPowerOfTwo(value:Float):Float;
	static final DEG2RAD : Float;
	static final RAD2DEG : Float;
}