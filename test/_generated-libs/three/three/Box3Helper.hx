package three;
@:jsRequire("three", "Box3Helper") extern class Box3Helper extends LineSegments {
	function new(box:Box3, ?color:Color);
	var box : Box3;
}