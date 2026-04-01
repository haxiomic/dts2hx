package global.three;

@:native("THREE.MultiMaterial") extern class MultiMaterial extends Material {
	function new(?materials:Array<Material>);
	var isMultiMaterial : Bool;
	var materials : Array<Material>;
	/**
		Convert the material to three.js JSON format.
	**/
	function toJSON(meta:Dynamic):Dynamic;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():MultiMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):MultiMaterial;
	static var prototype : MultiMaterial;
}