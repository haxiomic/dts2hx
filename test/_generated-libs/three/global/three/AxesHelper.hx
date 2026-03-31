package global.three;

@:native("THREE.AxesHelper") extern class AxesHelper extends LineSegments {
	function new(?size:Float);
	function copy(source:AxesHelper, ?recursive:Bool):AxesHelper;
	static var prototype : AxesHelper;
}