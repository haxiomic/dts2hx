package global.three;

@:native("THREE.VertexNormalsHelper") extern class VertexNormalsHelper extends LineSegments {
	function new(object:Object3D, ?size:Float, ?hex:Float, ?linewidth:Float);
	var object : Object3D;
	var size : Float;
	function update(?object:Object3D):Void;
	function copy(source:VertexNormalsHelper, ?recursive:Bool):VertexNormalsHelper;
	static var prototype : VertexNormalsHelper;
}