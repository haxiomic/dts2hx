package global.three;

@:native("THREE.ShapeUtils") @valueModuleOnly extern class ShapeUtils {
	static function area(contour:Array<Vec2>):Float;
	static function triangulate(contour:Array<Vec2>, indices:Bool):Array<Float>;
	static function triangulateShape(contour:Array<Vec2>, holes:Array<Vec2>):Array<Array<Float>>;
	static function isClockWise(pts:Array<Vec2>):Bool;
}