package three;
@:jsRequire("three", "GridHelper") extern class GridHelper extends LineSegments {
	function new(size:Float, divisions:Float, ?color1:ts.AnyOf2<Float, Color>, ?color2:ts.AnyOf2<Float, Color>);
	function setColors(?color1:ts.AnyOf2<Float, Color>, ?color2:ts.AnyOf2<Float, Color>):Void;
}