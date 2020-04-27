package three;
@:jsRequire("three", "HemisphereLight") extern class HemisphereLight extends Light {
	function new(?skyColor:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>, ?groundColor:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>, ?intensity:Float);
	var skyColor : Color;
	var groundColor : Color;
	var intensity : Float;
}