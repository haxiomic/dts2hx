package three;

@:jsRequire("three", "CurveUtils") @valueModuleOnly extern class CurveUtils {
	static function tangentQuadraticBezier(t:Float, p0:Float, p1:Float, p2:Float):Float;
	static function tangentCubicBezier(t:Float, p0:Float, p1:Float, p2:Float, p3:Float):Float;
	static function tangentSpline(t:Float, p0:Float, p1:Float, p2:Float, p3:Float):Float;
	static function interpolate(p0:Float, p1:Float, p2:Float, p3:Float, t:Float):Float;
}