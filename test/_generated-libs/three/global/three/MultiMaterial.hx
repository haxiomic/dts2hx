package global.three;

@:native("THREE.MultiMaterial") extern class MultiMaterial extends Material {
	function new(?materials:Array<Material>);
	var isMultiMaterial : Bool;
	var materials : Array<Material>;
	/**
		Convert the material to three.js JSON format.
	**/
	function toJSON(meta:Dynamic):Dynamic;
	static var prototype : MultiMaterial;
}