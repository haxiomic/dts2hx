package three;

@:jsRequire("three", "PolyhedronGeometry") extern class PolyhedronGeometry extends Geometry {
	function new(vertices:Array<Float>, indices:Array<Float>, ?radius:Float, ?detail:Float);
	var parameters : {
		var vertices : Array<Float>;
		var indices : Array<Float>;
		var radius : Float;
		var detail : Float;
	};
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):PolyhedronGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():PolyhedronGeometry;
	function copy(source:Geometry):PolyhedronGeometry;
	static var prototype : PolyhedronGeometry;
}