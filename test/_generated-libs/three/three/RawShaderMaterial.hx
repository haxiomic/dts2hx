package three;

@:jsRequire("three", "RawShaderMaterial") extern class RawShaderMaterial extends ShaderMaterial {
	function new(?parameters:ShaderMaterialParameters);
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():RawShaderMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):RawShaderMaterial;
	static var prototype : RawShaderMaterial;
}