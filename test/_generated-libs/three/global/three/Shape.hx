package global.three;

/**
	Defines a 2d shape plane using paths.
**/
@:native("THREE.Shape") extern class Shape extends Path {
	function new(?points:Array<Vector2>);
	var holes : Array<Path>;
	function extrude(?options:Dynamic):ExtrudeGeometry;
	function makeGeometry(?options:Dynamic):ShapeGeometry;
	function getPointsHoles(divisions:Float):Array<Array<Vector2>>;
	function extractAllPoints(divisions:Float):{
		var shape : Array<Vector2>;
		var holes : Array<Array<Vector2>>;
	};
	function extractPoints(divisions:Float):Array<Vector2>;
	static var prototype : Shape;
}