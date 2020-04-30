package three;
@:jsRequire("three", "WebGLPrograms") extern class WebGLPrograms {
	function new(renderer:WebGLRenderer, extensions:WebGLExtensions, capabilities:WebGLCapabilities);
	var programs : std.Array<WebGLProgram>;
	function getParameters(material:ShaderMaterial, lights:Any, fog:Any, nClipPlanes:Float, object:Any):Any;
	function getProgramCode(material:ShaderMaterial, parameters:Any):String;
	function acquireProgram(material:ShaderMaterial, parameters:Any, code:String):WebGLProgram;
	function releaseProgram(program:WebGLProgram):Void;
}