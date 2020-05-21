package three;

/**
	This class contains the parameters that define linear fog, i.e., that grows linearly denser with the distance.
**/
@:jsRequire("three", "Fog") extern class Fog {
	function new(hex:Float, ?near:Float, ?far:Float);
	var name : String;
	/**
		Fog color.
	**/
	var color : Color;
	/**
		The minimum distance to start applying fog. Objects that are less than 'near' units from the active camera won't be affected by fog.
	**/
	var near : Float;
	/**
		The maximum distance at which fog stops being calculated and applied. Objects that are more than 'far' units away from the active camera won't be affected by fog.
		Default is 1000.
	**/
	var far : Float;
	function clone():Fog;
	function toJSON():Dynamic;
	static var prototype : Fog;
}