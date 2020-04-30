package three;
@:jsRequire("three", "ShaderMaterial") extern class ShaderMaterial extends Material {
	function new(?parameters:ShaderMaterialParameters);
	var defines : Any;
	var uniforms : { };
	var vertexShader : String;
	var fragmentShader : String;
	var linewidth : Float;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var clipping : Bool;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;
	var derivatives : Any;
	var extensions : {
		var derivatives : Bool;
		var fragDepth : Bool;
		var drawBuffers : Bool;
		var shaderTextureLOD : Bool;
	};
	var defaultAttributeValues : Any;
	var index0AttributeName : Null<String>;
}