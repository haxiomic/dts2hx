package three;

@:jsRequire("three", "Bone") extern class Bone extends Object3D {
	function new();
	var isBone : Bool;
	function copy(source:Bone, ?recursive:Bool):Bone;
	static var prototype : Bone;
}