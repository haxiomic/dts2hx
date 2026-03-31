package three;

@:jsRequire("three", "ArrayCamera") extern class ArrayCamera extends PerspectiveCamera {
	function new(?cameras:Array<PerspectiveCamera>);
	var cameras : Array<PerspectiveCamera>;
	var isArrayCamera : Bool;
	function copy(source:ArrayCamera, ?recursive:Bool):ArrayCamera;
	static var prototype : ArrayCamera;
}