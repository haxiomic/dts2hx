package three;

@:jsRequire("three", "TetrahedronGeometry") extern class TetrahedronGeometry extends PolyhedronGeometry {
	function new(?radius:Float, ?detail:Float);
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):TetrahedronGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():TetrahedronGeometry;
	function copy(source:Geometry):TetrahedronGeometry;
	static var prototype : TetrahedronGeometry;
}