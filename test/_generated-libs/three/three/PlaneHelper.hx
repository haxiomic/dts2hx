package three;
@:jsRequire("three", "PlaneHelper") extern class PlaneHelper extends LineSegments {
	function new(plane:Plane, ?size:Float, ?hex:Float);
	var plane : Plane;
	var size : Float;
	/**
		Updates global transform of the object and its children.
	**/
	function updateMatrixWorld(?force:Bool):Void;
}