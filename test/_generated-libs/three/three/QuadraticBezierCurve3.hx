package three;
@:jsRequire("three", "QuadraticBezierCurve3") extern class QuadraticBezierCurve3 {
	function new(v0:Vector3, v1:Vector3, v2:Vector3);
	var v0 : Vector3;
	var v1 : Vector3;
	var v2 : Vector3;
	/**
		Returns a vector for point t of the curve where t is between 0 and 1
		getPoint(t: number): T;
	**/
	function getPoint(t:Float):Vector3;
	/**
		This value determines the amount of divisions when calculating the cumulative segment lengths of a curve via .getLengths.
		To ensure precision when using methods like .getSpacedPoints, it is recommended to increase .arcLengthDivisions if the curve is very large.
		Default is 200.
	**/
	var arcLengthDivisions : Float;
	/**
		Returns a vector for point at relative position in curve according to arc length
		getPointAt(u: number): T;
	**/
	function getPointAt(u:Float, ?optionalTarget:Vector3):Vector3;
	/**
		Get sequence of points using getPoint( t )
		getPoints(divisions?: number): T[];
	**/
	function getPoints(?divisions:Float):std.Array<Vector3>;
	/**
		Get sequence of equi-spaced points using getPointAt( u )
		getSpacedPoints(divisions?: number): T[];
	**/
	function getSpacedPoints(?divisions:Float):std.Array<Vector3>;
	/**
		Get total curve arc length
	**/
	function getLength():Float;
	/**
		Get list of cumulative segment lengths
	**/
	function getLengths(?divisions:Float):std.Array<Float>;
	/**
		Update the cumlative segment distance cache
	**/
	function updateArcLengths():Void;
	/**
		Given u ( 0 .. 1 ), get a t to find p. This gives you points which are equi distance
	**/
	function getUtoTmapping(u:Float, distance:Float):Float;
	/**
		Returns a unit vector tangent at t. If the subclassed curve do not implement its tangent derivation, 2 points a small delta apart will be used to find its gradient which seems to give a reasonable approximation
		getTangent(t: number): T;
	**/
	function getTangent(t:Float):Vector3;
	/**
		Returns tangent at equidistance point u on the curve
		getTangentAt(u: number): T;
	**/
	function getTangentAt(u:Float):Vector3;
}