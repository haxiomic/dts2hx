package three;

typedef Shader = {
	var uniforms : haxe.DynamicAccess<IUniform>;
	var vertexShader : String;
	var fragmentShader : String;
};