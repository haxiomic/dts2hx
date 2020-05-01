package three;
/**
	Defines a 2d shape plane using paths.
**/
@:jsRequire("three", "Shape") extern class Shape extends Path {
	function new(?points:std.Array<Vector2>);
	var holes : std.Array<Path>;
	function extrude(?options:Dynamic):ExtrudeGeometry;
	function makeGeometry(?options:Dynamic):ShapeGeometry;
	function getPointsHoles(divisions:Float):std.Array<std.Array<Vector2>>;
	function extractAllPoints(divisions:Float):{
		var shape : std.Array<Vector2>;
		var holes : std.Array<std.Array<Vector2>>;
	};
	function extractPoints(divisions:Float):std.Array<Vector2>;
}