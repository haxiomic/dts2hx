package three;

@:jsRequire("three", "LatheGeometry") extern class LatheGeometry extends Geometry {
	function new(points:Array<Vector2>, ?segments:Float, ?phiStart:Float, ?phiLength:Float);
	var parameters : {
		var points : Array<Vector2>;
		var segments : Float;
		var phiStart : Float;
		var phiLength : Float;
	};
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):LatheGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():LatheGeometry;
	function copy(source:Geometry):LatheGeometry;
	static var prototype : LatheGeometry;
}