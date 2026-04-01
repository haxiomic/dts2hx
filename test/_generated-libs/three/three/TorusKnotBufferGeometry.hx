package three;

@:jsRequire("three", "TorusKnotBufferGeometry") extern class TorusKnotBufferGeometry extends BufferGeometry {
	function new(?radius:Float, ?tube:Float, ?tubularSegments:Float, ?radialSegments:Float, ?p:Float, ?q:Float);
	var parameters : {
		var radius : Float;
		var tube : Float;
		var tubularSegments : Float;
		var radialSegments : Float;
		var p : Float;
		var q : Float;
		var heightScale : Float;
	};
	function clone():TorusKnotBufferGeometry;
	function copy(source:BufferGeometry):TorusKnotBufferGeometry;
	static var prototype : TorusKnotBufferGeometry;
}