package global.three;

/**
	This class contains the parameters that define linear fog, i.e., that grows exponentially denser with the distance.
**/
@:native("THREE.FogExp2") extern class FogExp2 {
	function new(hex:ts.AnyOf2<String, Float>, ?density:Float);
	var name : String;
	var color : Color;
	/**
		Defines how fast the fog will grow dense.
		Default is 0.00025.
	**/
	var density : Float;
	function clone():FogExp2;
	function toJSON():Dynamic;
	static var prototype : FogExp2;
}