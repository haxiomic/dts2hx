package three;
@:jsRequire("three", "RectAreaLight") extern class RectAreaLight extends Light {
	function new(?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>, ?intensity:Float, ?width:Float, ?height:Float);
	var width : Float;
	var height : Float;
}