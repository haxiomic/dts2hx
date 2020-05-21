package three;

@:jsRequire("three", "EdgesGeometry") extern class EdgesGeometry extends BufferGeometry {
	function new(geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?thresholdAngle:Float);
	function clone():EdgesGeometry;
	function copy(source:BufferGeometry):EdgesGeometry;
	static var prototype : EdgesGeometry;
}