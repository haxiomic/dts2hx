package three;
@:jsRequire("three", "Line") extern class Line extends Object3D {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, std.Array<Material>>, ?mode:Float);
	var geometry : ts.AnyOf2<Geometry, BufferGeometry>;
	var material : ts.AnyOf2<Material, std.Array<Material>>;
	var isLine : Bool;
	function computeLineDistances():Line;
}