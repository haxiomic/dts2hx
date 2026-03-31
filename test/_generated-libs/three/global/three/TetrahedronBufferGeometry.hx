package global.three;

@:native("THREE.TetrahedronBufferGeometry") extern class TetrahedronBufferGeometry extends PolyhedronBufferGeometry {
	function new(?radius:Float, ?detail:Float);
	static var prototype : TetrahedronBufferGeometry;
}