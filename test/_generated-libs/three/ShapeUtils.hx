package three;
@:jsRequire("three", "ShapeUtils") @valueModuleOnly extern class ShapeUtils {
	static function area(contour:std.Array<Vec2>):Float;
	static function triangulate(contour:std.Array<Vec2>, indices:Bool):std.Array<Float>;
	static function triangulateShape(contour:std.Array<Vec2>, holes:std.Array<Vec2>):std.Array<std.Array<Float>>;
	static function isClockWise(pts:std.Array<Vec2>):Bool;
}