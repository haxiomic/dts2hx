package three;

/**
	( interface Vector&lt;T&gt; )
	
	Abstract interface of Vector2, Vector3 and Vector4.
	Currently the members of Vector is NOT type safe because it accepts different typed vectors.
	Those definitions will be changed when TypeScript innovates Generics to be type safe.
**/
typedef Vector = {
	function setComponent(index:Float, value:Float):Vector;
	function getComponent(index:Float):Float;
	function set(args:haxe.extern.Rest<Float>):Vector;
	function setScalar(scalar:Float):Vector;
	/**
		copy(v:T):T;
	**/
	function copy(v:Vector):Vector;
	/**
		NOTE: The second argument is deprecated.
		
		add(v:T):T;
	**/
	function add(v:Vector, ?w:Vector):Vector;
	/**
		addVectors(a:T, b:T):T;
	**/
	function addVectors(a:Vector, b:Vector):Vector;
	function addScaledVector(vector:Vector, scale:Float):Vector;
	/**
		Adds the scalar value s to this vector's values.
	**/
	function addScalar(scalar:Float):Vector;
	/**
		sub(v:T):T;
	**/
	function sub(v:Vector):Vector;
	/**
		subVectors(a:T, b:T):T;
	**/
	function subVectors(a:Vector, b:Vector):Vector;
	/**
		multiplyScalar(s:number):T;
	**/
	function multiplyScalar(s:Float):Vector;
	/**
		divideScalar(s:number):T;
	**/
	function divideScalar(s:Float):Vector;
	/**
		negate():T;
	**/
	function negate():Vector;
	/**
		dot(v:T):T;
	**/
	function dot(v:Vector):Float;
	/**
		lengthSq():number;
	**/
	function lengthSq():Float;
	/**
		length():number;
	**/
	function length():Float;
	/**
		normalize():T;
	**/
	function normalize():Vector;
	/**
		NOTE: Vector4 doesn't have the property.
		
		distanceTo(v:T):number;
	**/
	@:optional
	function distanceTo(v:Vector):Float;
	/**
		NOTE: Vector4 doesn't have the property.
		
		distanceToSquared(v:T):number;
	**/
	@:optional
	function distanceToSquared(v:Vector):Float;
	/**
		setLength(l:number):T;
	**/
	function setLength(l:Float):Vector;
	/**
		lerp(v:T, alpha:number):T;
	**/
	function lerp(v:Vector, alpha:Float):Vector;
	/**
		equals(v:T):boolean;
	**/
	function equals(v:Vector):Bool;
	/**
		clone():T;
	**/
	function clone():Vector;
};