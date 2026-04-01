package three;

@:jsRequire("three", "PolyhedronBufferGeometry") extern class PolyhedronBufferGeometry extends BufferGeometry {
	function new(vertices:Array<Float>, indices:Array<Float>, ?radius:Float, ?detail:Float);
	var parameters : {
		var vertices : Array<Float>;
		var indices : Array<Float>;
		var radius : Float;
		var detail : Float;
	};
	function clone():PolyhedronBufferGeometry;
	function copy(source:BufferGeometry):PolyhedronBufferGeometry;
	static var prototype : PolyhedronBufferGeometry;
}