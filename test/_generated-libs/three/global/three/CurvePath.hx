package global.three;

@:native("THREE.CurvePath") extern class CurvePath<T> extends Curve<T> {
	function new();
	var curves : Array<Curve<T>>;
	var autoClose : Bool;
	function add(curve:Curve<T>):Void;
	function checkConnection():Bool;
	function closePath():Void;
	/**
		Returns a vector for point t of the curve where t is between 0 and 1
		getPoint(t: number): T;
	**/
	function getPoint(t:Float):T;
	function getCurveLengths():Array<Float>;
	function createPointsGeometry(divisions:Float):Geometry;
	function createSpacedPointsGeometry(divisions:Float):Geometry;
	function createGeometry(points:Array<T>):Geometry;
	static var prototype : CurvePath<Dynamic>;
}