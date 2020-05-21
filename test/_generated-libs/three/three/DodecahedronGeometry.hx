package three;

@:jsRequire("three", "DodecahedronGeometry") extern class DodecahedronGeometry extends Geometry {
	function new(?radius:Float, ?detail:Float);
	var parameters : {
		var radius : Float;
		var detail : Float;
	};
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):DodecahedronGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():DodecahedronGeometry;
	function copy(source:Geometry):DodecahedronGeometry;
	static var prototype : DodecahedronGeometry;
}