package three;

@:jsRequire("three", "ArcCurve") extern class ArcCurve extends EllipseCurve {
	function new(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool);
	static var prototype : ArcCurve;
}