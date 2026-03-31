package three;

@:jsRequire("three", "BoxHelper") extern class BoxHelper extends LineSegments {
	function new(object:Object3D, ?color:Color);
	function update(?object:Object3D):Void;
	function copy(source:BoxHelper, ?recursive:Bool):BoxHelper;
	static var prototype : BoxHelper;
}