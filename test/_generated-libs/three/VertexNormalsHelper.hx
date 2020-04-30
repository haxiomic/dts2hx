package three;
@:jsRequire("three", "VertexNormalsHelper") extern class VertexNormalsHelper extends LineSegments {
	function new(object:Object3D, ?size:Float, ?hex:Float, ?linewidth:Float);
	var object : Object3D;
	var size : Float;
	function update(?object:Object3D):Void;
}