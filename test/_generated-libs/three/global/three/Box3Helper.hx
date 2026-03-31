package global.three;

@:native("THREE.Box3Helper") extern class Box3Helper extends LineSegments {
	function new(box:Box3, ?color:Color);
	var box : Box3;
	function copy(source:Box3Helper, ?recursive:Bool):Box3Helper;
	static var prototype : Box3Helper;
}