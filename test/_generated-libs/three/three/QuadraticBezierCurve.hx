package three;

@:jsRequire("three", "QuadraticBezierCurve") extern class QuadraticBezierCurve extends Curve<Vector2> {
	function new(v0:Vector2, v1:Vector2, v2:Vector2);
	var v0 : Vector2;
	var v1 : Vector2;
	var v2 : Vector2;
	static var prototype : QuadraticBezierCurve;
}