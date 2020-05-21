package three;

@:jsRequire("three", "TubeGeometry") extern class TubeGeometry extends Geometry {
	function new(path:Curve<Vector3>, ?tubularSegments:Float, ?radius:Float, ?radiusSegments:Float, ?closed:Bool);
	var parameters : {
		var path : Curve<Vector3>;
		var tubularSegments : Float;
		var radius : Float;
		var radialSegments : Float;
		var closed : Bool;
	};
	var tangents : Array<Vector3>;
	var normals : Array<Vector3>;
	var binormals : Array<Vector3>;
	function setFromPoints(points:ts.AnyOf2<Array<Vector3>, Array<Vector2>>):TubeGeometry;
	/**
		Creates a new clone of the Geometry.
	**/
	function clone():TubeGeometry;
	function copy(source:Geometry):TubeGeometry;
	static var prototype : TubeGeometry;
}