package three;

@:jsRequire("three", "AxesHelper") extern class AxesHelper extends LineSegments {
	function new(?size:Float);
	function copy(source:AxesHelper, ?recursive:Bool):AxesHelper;
	static var prototype : AxesHelper;
}