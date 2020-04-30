package three;
/**
	This light's color gets applied to all the objects in the scene globally.
**/
@:jsRequire("three", "AmbientLight") extern class AmbientLight extends Light {
	/**
		This creates a Ambientlight with a color.
	**/
	function new(?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>, ?intensity:Float);
}