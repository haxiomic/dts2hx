package global.three;

@:native("THREE.RawShaderMaterial") extern class RawShaderMaterial extends ShaderMaterial {
	function new(?parameters:ShaderMaterialParameters);
	static var prototype : RawShaderMaterial;
}