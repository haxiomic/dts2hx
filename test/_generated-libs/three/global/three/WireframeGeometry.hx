package global.three;

@:native("THREE.WireframeGeometry") extern class WireframeGeometry extends BufferGeometry {
	function new(geometry:ts.AnyOf2<Geometry, BufferGeometry>);
	static var prototype : WireframeGeometry;
}