package three;
@:jsRequire("three", "CurvePath") extern class CurvePath<T:(Vector)> extends Curve<T> {
	function new();
	var curves : std.Array<Curve<T>>;
	var autoClose : Bool;
	function add(curve:Curve<T>):Void;
	function checkConnection():Bool;
	function closePath():Void;
	/**
		Returns a vector for point t of the curve where t is between 0 and 1
		getPoint(t: number): T;
	**/
	function getPoint(t:Float):T;
	/**
		Get total curve arc length
	**/
	function getLength():Float;
	/**
		Update the cumlative segment distance cache
	**/
	function updateArcLengths():Void;
	function getCurveLengths():std.Array<Float>;
	/**
		Get sequence of equi-spaced points using getPointAt( u )
		getSpacedPoints(divisions?: number): T[];
	**/
	function getSpacedPoints(?divisions:Float):std.Array<T>;
	/**
		Get sequence of points using getPoint( t )
		getPoints(divisions?: number): T[];
	**/
	function getPoints(?divisions:Float):std.Array<T>;
	function createPointsGeometry(divisions:Float):Geometry;
	function createSpacedPointsGeometry(divisions:Float):Geometry;
	function createGeometry(points:std.Array<T>):Geometry;
}