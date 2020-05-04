package three;
@:jsRequire("three", "MultiMaterial") extern class MultiMaterial extends Material {
	function new(?materials:Array<Material>);
	var isMultiMaterial : Bool;
	var materials : Array<Material>;
}