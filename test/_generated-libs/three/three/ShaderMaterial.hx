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
	/**
		Whether the material is affected by lights. Default is true.
	**/
	var lights : Bool;
	var clipping : Bool;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;
	var derivatives : Any;
	var extensions : { var derivatives : Bool; var fragDepth : Bool; var drawBuffers : Bool; var shaderTextureLOD : Bool; };
	var defaultAttributeValues : Any;
	var index0AttributeName : Null<String>;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:ShaderMaterialParameters):Void;
	/**
		Convert the material to three.js JSON format.
	**/
	function toJSON(meta:Any):Any;
}