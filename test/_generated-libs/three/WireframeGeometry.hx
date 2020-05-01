package three;
@:jsRequire("three", "WireframeGeometry") extern class WireframeGeometry extends BufferGeometry {
	function new(geometry:ts.AnyOf2<Geometry, BufferGeometry>);
}