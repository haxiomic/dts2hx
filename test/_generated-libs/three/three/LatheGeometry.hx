package three;
@:jsRequire("three", "LatheGeometry") extern class LatheGeometry extends Geometry {
	function new(points:std.Array<Vector2>, ?segments:Float, ?phiStart:Float, ?phiLength:Float);
	var parameters : { var points : std.Array<Vector2>; var segments : Float; var phiStart : Float; var phiLength : Float; };
}