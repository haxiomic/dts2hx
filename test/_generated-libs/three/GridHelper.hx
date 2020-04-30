package three;
@:jsRequire("three", "GridHelper") extern class GridHelper extends LineSegments {
	function new(size:Float, divisions:Float, ?color1:haxe.extern.EitherType<Float, Color>, ?color2:haxe.extern.EitherType<Float, Color>);
	function setColors(?color1:haxe.extern.EitherType<Float, Color>, ?color2:haxe.extern.EitherType<Float, Color>):Void;
}