package three;
@:jsRequire("three", "WebGLProgram") extern class WebGLProgram {
	function new(renderer:WebGLRenderer, extensions:WebGLExtensions, code:String, material:ShaderMaterial, shader:WebGLShader, parameters:WebGLRendererParameters, capabilities:WebGLCapabilities);
	var id : Float;
	var code : String;
	var usedTimes : Float;
	var program : Any;
	var vertexShader : WebGLShader;
	var fragmentShader : WebGLShader;
	var uniforms : Any;
	var attributes : Any;
	function getUniforms():WebGLUniforms;
	function getAttributes():Any;
	function destroy():Void;
}