package global.three;

@:native("THREE.IcosahedronBufferGeometry") extern class IcosahedronBufferGeometry extends PolyhedronBufferGeometry {
	function new(?radius:Float, ?detail:Float);
	function clone():IcosahedronBufferGeometry;
	function copy(source:BufferGeometry):IcosahedronBufferGeometry;
	static var prototype : IcosahedronBufferGeometry;
}