package global.three;

@:native("THREE.DodecahedronBufferGeometry") extern class DodecahedronBufferGeometry extends PolyhedronBufferGeometry {
	function new(?radius:Float, ?detail:Float);
	static var prototype : DodecahedronBufferGeometry;
}