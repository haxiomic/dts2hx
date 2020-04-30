package three;
@:jsRequire("three", "SplineCurve") extern class SplineCurve extends Curve<Vector2> {
	function new(?points:std.Array<Vector2>);
	var points : std.Array<Vector2>;
}