package three;

@:jsRequire("three", "ShadowMaterial") extern class ShadowMaterial extends ShaderMaterial {
	function new(?parameters:ShaderMaterialParameters);
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():ShadowMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):ShadowMaterial;
	static var prototype : ShadowMaterial;
}