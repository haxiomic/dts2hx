package global.three;

@:native("THREE.Line") extern class Line extends Object3D {
	function new(?geometry:ts.AnyOf2<Geometry, BufferGeometry>, ?material:ts.AnyOf2<Material, Array<Material>>, ?mode:Float);
	var geometry : ts.AnyOf2<Geometry, BufferGeometry>;
	var material : ts.AnyOf2<Material, Array<Material>>;
	var isLine : Bool;
	function computeLineDistances():Line;
	function copy(source:Line, ?recursive:Bool):Line;
	static var prototype : Line;
}