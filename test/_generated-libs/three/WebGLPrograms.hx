package three;
@:jsRequire("three", "WebGLPrograms") extern class WebGLPrograms {
	function new(renderer:WebGLRenderer, extensions:WebGLExtensions, capabilities:WebGLCapabilities);
	var programs : std.Array<WebGLProgram>;
	function getParameters(material:ShaderMaterial, lights:Dynamic, fog:Dynamic, nClipPlanes:Float, object:Dynamic):Dynamic;
	function getProgramCode(material:ShaderMaterial, parameters:Dynamic):String;
	function acquireProgram(material:ShaderMaterial, parameters:Dynamic, code:String):WebGLProgram;
	function releaseProgram(program:WebGLProgram):Void;
}