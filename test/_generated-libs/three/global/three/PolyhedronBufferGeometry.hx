package global.three;

@:native("THREE.PolyhedronBufferGeometry") extern class PolyhedronBufferGeometry extends BufferGeometry {
	function new(vertices:Array<Float>, indices:Array<Float>, ?radius:Float, ?detail:Float);
	var parameters : {
		var vertices : Array<Float>;
		var indices : Array<Float>;
		var radius : Float;
		var detail : Float;
	};
	static var prototype : PolyhedronBufferGeometry;
}