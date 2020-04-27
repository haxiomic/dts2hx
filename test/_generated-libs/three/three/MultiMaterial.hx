package three;
@:jsRequire("three", "MultiMaterial") extern class MultiMaterial extends Material {
	function new(?materials:std.Array<Material>);
	var isMultiMaterial : Bool;
	var materials : std.Array<Material>;
	/**
		Convert the material to three.js JSON format.
	**/
	function toJSON(meta:Any):Any;
}