package three;

@:jsRequire("three", "OctahedronBufferGeometry") extern class OctahedronBufferGeometry extends PolyhedronBufferGeometry {
	function new(?radius:Float, ?detail:Float);
	function clone():OctahedronBufferGeometry;
	function copy(source:BufferGeometry):OctahedronBufferGeometry;
	static var prototype : OctahedronBufferGeometry;
}