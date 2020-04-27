package three;
@:jsRequire("three", "ArrayCamera") extern class ArrayCamera extends PerspectiveCamera {
	function new(?cameras:std.Array<PerspectiveCamera>);
	var cameras : std.Array<PerspectiveCamera>;
	var isArrayCamera : Bool;
}