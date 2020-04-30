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
	var tangents : std.Array<Vector3>;
	var normals : std.Array<Vector3>;
	var binormals : std.Array<Vector3>;
}