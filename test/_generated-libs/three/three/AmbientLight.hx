package three;
/**
	This light's color gets applied to all the objects in the scene globally.
**/
@:jsRequire("three", "AmbientLight") extern class AmbientLight extends Light {
	function new(?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>, ?intensity:Float);
	/**
		Gets rendered into shadow map.
	**/
	var castShadow : Bool;
}