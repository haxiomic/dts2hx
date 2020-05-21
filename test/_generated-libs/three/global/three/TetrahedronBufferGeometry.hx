package global.three;

@:native("THREE.TetrahedronBufferGeometry") extern class TetrahedronBufferGeometry extends PolyhedronBufferGeometry {
	function new(?radius:Float, ?detail:Float);
	function clone():TetrahedronBufferGeometry;
	function copy(source:BufferGeometry):TetrahedronBufferGeometry;
	static var prototype : TetrahedronBufferGeometry;
}