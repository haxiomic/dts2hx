package three;

/**
	a 2d path representation, comprising of points, lines, and cubes, similar to the html5 2d canvas api. It extends CurvePath.
**/
@:jsRequire("three", "Path") extern class Path extends CurvePath<Vector2> {
	function new(?points:Array<Vector2>);
	var currentPoint : Vector2;
	function fromPoints(vectors:Array<Vector2>):Void;
	function setFromPoints(vectors:Array<Vector2>):Void;
	function moveTo(x:Float, y:Float):Void;
	function lineTo(x:Float, y:Float):Void;
	function quadraticCurveTo(aCPx:Float, aCPy:Float, aX:Float, aY:Float):Void;
	function bezierCurveTo(aCP1x:Float, aCP1y:Float, aCP2x:Float, aCP2y:Float, aX:Float, aY:Float):Void;
	function splineThru(pts:Array<Vector2>):Void;
	function arc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool):Void;
	function absarc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool):Void;
	function ellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool, aRotation:Float):Void;
	function absellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockwise:Bool, aRotation:Float):Void;
	static var prototype : Path;
}