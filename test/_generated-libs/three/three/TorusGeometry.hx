package three;

@:jsRequire("three", "TorusGeometry") extern class TorusGeometry extends Geometry {
	function new(?radius:Float, ?tube:Float, ?radialSegments:Float, ?tubularSegments:Float, ?arc:Float);
	var parameters : {
		var radius : Float;
		var tube : Float;
		var radialSegments : Float;
		var tubularSegments : Float;
		var arc : Float;
	};
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):TorusGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():TorusGeometry;
	function copy(source:Geometry):TorusGeometry;
	static var prototype : TorusGeometry;
}