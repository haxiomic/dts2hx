package three;
@:jsRequire("three", "BoxHelper") extern class BoxHelper extends LineSegments {
	function new(object:Object3D, ?color:Color);
	function update(?object:Object3D):Void;
}