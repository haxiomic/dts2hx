package three;

@:jsRequire("three", "ShaderMaterial") extern class ShaderMaterial extends Material {
	function new(?parameters:ShaderMaterialParameters);
	var defines : Dynamic;
	var uniforms : haxe.DynamicAccess<IUniform>;
	var vertexShader : String;
	var fragmentShader : String;
	var linewidth : Float;
	var wireframe : Bool;
	var wireframeLinewidth : Float;
	var clipping : Bool;
	var skinning : Bool;
	var morphTargets : Bool;
	var morphNormals : Bool;
	var derivatives : Dynamic;
	var extensions : {
		var derivatives : Bool;
		var fragDepth : Bool;
		var drawBuffers : Bool;
		var shaderTextureLOD : Bool;
	};
	var defaultAttributeValues : Dynamic;
	var index0AttributeName : Null<String>;
	/**
		Sets the properties based on the values.
	**/
	function setValues(parameters:ShaderMaterialParameters):Void;
	/**
		Convert the material to three.js JSON format.
	**/
	function toJSON(meta:Dynamic):Dynamic;
	/**
		Return a new material with the same parameters as this material.
	**/
	function clone():ShaderMaterial;
	/**
		Copy the parameters from the passed material into this material.
	**/
	function copy(material:Material):ShaderMaterial;
	static var prototype : ShaderMaterial;
}