package global.three;

@:native("THREE.WebGLProgram") extern class WebGLProgram {
	function new(renderer:WebGLRenderer, extensions:WebGLExtensions, code:String, material:ShaderMaterial, shader:WebGLShader, parameters:WebGLRendererParameters, capabilities:WebGLCapabilities);
	var id : Float;
	var code : String;
	var usedTimes : Float;
	var program : Dynamic;
	var vertexShader : WebGLShader;
	var fragmentShader : WebGLShader;
	var uniforms : Dynamic;
	var attributes : Dynamic;
	function getUniforms():WebGLUniforms;
	function getAttributes():Dynamic;
	function destroy():Void;
	static var prototype : WebGLProgram;
}