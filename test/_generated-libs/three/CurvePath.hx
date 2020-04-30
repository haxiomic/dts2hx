package three;
@:jsRequire("three", "CurvePath") extern class CurvePath<T> extends Curve<T> {
	function new();
	var curves : std.Array<Curve<T>>;
	var autoClose : Bool;
	function add(curve:Curve<T>):Void;
	function checkConnection():Bool;
	function closePath():Void;
	function getCurveLengths():std.Array<Float>;
	function createPointsGeometry(divisions:Float):Geometry;
	function createSpacedPointsGeometry(divisions:Float):Geometry;
	function createGeometry(points:std.Array<T>):Geometry;
}