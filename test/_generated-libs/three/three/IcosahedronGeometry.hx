package three;

@:jsRequire("three", "IcosahedronGeometry") extern class IcosahedronGeometry extends PolyhedronGeometry {
	function new(?radius:Float, ?detail:Float);
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):IcosahedronGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():IcosahedronGeometry;
	function copy(source:Geometry):IcosahedronGeometry;
	static var prototype : IcosahedronGeometry;
}