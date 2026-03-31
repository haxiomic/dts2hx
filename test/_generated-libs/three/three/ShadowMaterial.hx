package three;

@:jsRequire("three", "ShadowMaterial") extern class ShadowMaterial extends ShaderMaterial {
	function new(?parameters:ShaderMaterialParameters);
	static var prototype : ShadowMaterial;
}