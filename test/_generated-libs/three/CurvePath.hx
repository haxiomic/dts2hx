package three;
@:jsRequire("three", "CurvePath") extern class CurvePath<T> extends Curve<T> {
	function new();
	var curves : Array<Curve<T>>;
	var autoClose : Bool;
	function add(curve:Curve<T>):Void;
	function checkConnection():Bool;
	function closePath():Void;
	function getCurveLengths():Array<Float>;
	function createPointsGeometry(divisions:Float):Geometry;
	function createSpacedPointsGeometry(divisions:Float):Geometry;
	function createGeometry(points:Array<T>):Geometry;
}