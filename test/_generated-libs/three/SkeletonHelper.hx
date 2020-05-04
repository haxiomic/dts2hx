package three;
@:jsRequire("three", "SkeletonHelper") extern class SkeletonHelper extends LineSegments {
	function new(bone:Object3D);
	var bones : Array<Bone>;
	var root : Object3D;
	function getBoneList(object:Object3D):Array<Bone>;
	function update():Void;
}