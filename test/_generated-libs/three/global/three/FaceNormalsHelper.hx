package global.three;

@:native("THREE.FaceNormalsHelper") extern class FaceNormalsHelper extends LineSegments {
	function new(object:Object3D, ?size:Float, ?hex:Float, ?linewidth:Float);
	var object : Object3D;
	var size : Float;
	function update(?object:Object3D):Void;
	function copy(source:FaceNormalsHelper, ?recursive:Bool):FaceNormalsHelper;
	static var prototype : FaceNormalsHelper;
}