package global.three;

@:native("THREE.EdgesGeometry") extern class EdgesGeometry extends BufferGeometry {
	function new(geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?thresholdAngle:Float);
	static var prototype : EdgesGeometry;
}