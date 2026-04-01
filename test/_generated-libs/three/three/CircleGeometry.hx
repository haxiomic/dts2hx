package three;

@:jsRequire("three", "CircleGeometry") extern class CircleGeometry extends Geometry {
	function new(?radius:Float, ?segments:Float, ?thetaStart:Float, ?thetaLength:Float);
	var parameters : {
		var radius : Float;
		var segments : Float;
		var thetaStart : Float;
		var thetaLength : Float;
	};
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):CircleGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():CircleGeometry;
	function copy(source:Geometry):CircleGeometry;
	static var prototype : CircleGeometry;
}