package three;

@:jsRequire("three", "DodecahedronBufferGeometry") extern class DodecahedronBufferGeometry extends PolyhedronBufferGeometry {
	function new(?radius:Float, ?detail:Float);
	function clone():DodecahedronBufferGeometry;
	function copy(source:BufferGeometry):DodecahedronBufferGeometry;
	static var prototype : DodecahedronBufferGeometry;
}