package three;

@:jsRequire("three", "TubeBufferGeometry") extern class TubeBufferGeometry extends BufferGeometry {
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
	function clone():TubeBufferGeometry;
	function copy(source:BufferGeometry):TubeBufferGeometry;
	static var prototype : TubeBufferGeometry;
}