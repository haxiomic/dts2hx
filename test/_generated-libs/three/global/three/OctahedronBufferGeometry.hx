package global.three;

@:native("THREE.OctahedronBufferGeometry") extern class OctahedronBufferGeometry extends PolyhedronBufferGeometry {
	function new(?radius:Float, ?detail:Float);
	static var prototype : OctahedronBufferGeometry;
}