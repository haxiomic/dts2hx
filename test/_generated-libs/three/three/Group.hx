package three;

@:jsRequire("three", "Group") extern class Group extends Object3D {
	function new();
	var isGroup : Bool;
	function copy(source:Group, ?recursive:Bool):Group;
	static var prototype : Group;
}